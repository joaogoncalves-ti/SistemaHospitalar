package com.projetohospital.service;
import com.projetohospital.entity.ConsultaEntity;
import com.projetohospital.entity.PacienteEntity;
import com.projetohospital.entity.UsuarioEntity;
import com.projetohospital.repository.ConsultaRepository;
import com.projetohospital.repository.PacienteRepository;
import com.projetohospital.repository.UsuarioRepository;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

@Service
public class ConsultaService {

    private final ConsultaRepository consultaRepository;
    private final PacienteRepository pacienteRepository;
    private final UsuarioRepository usuarioRepository;


    public ConsultaService(ConsultaRepository consultaRepository,
                           PacienteRepository pacienteRepository,
                           UsuarioRepository usuarioRepository) {
        this.consultaRepository = consultaRepository;
        this.pacienteRepository = pacienteRepository;
        this.usuarioRepository = usuarioRepository;
    }

    // metodo que serve pra agendar ou reagendar uma consulta
    public ConsultaEntity salvarOuAtualiza(ConsultaEntity consultaEntity) {
        Optional<PacienteEntity> pacienteOpt = pacienteRepository.findById(consultaEntity.getPaciente().getIdPaciente());
        Optional<UsuarioEntity> usuarioOpt = usuarioRepository.findById(consultaEntity.getUsuario().getIdUsuario());
        if (pacienteOpt.isEmpty() || usuarioOpt.isEmpty()) {
            throw new IllegalArgumentException("Paciente ou Usuário inválido");
        }
        return consultaRepository.save(consultaEntity);
    }


    public List<ConsultaEntity> listarTodas() {
        return consultaRepository.findAll();
    }


    public Optional<ConsultaEntity> buscarPorId(int id) {
        return consultaRepository.findById(id);
    }


    public boolean cancelarConsulta(int id) {
        if (consultaRepository.existsById(id)) {
            consultaRepository.deleteById(id);
            return true;

        }
        return false;
    }
}
