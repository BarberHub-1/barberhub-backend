package br.barberhub.backendApplication.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import br.barberhub.backendApplication.model.Agendamento;
import br.barberhub.backendApplication.model.StatusAgendamento;

public interface AgendamentoRepository extends JpaRepository<Agendamento, Long> {
    List<Agendamento> findByEstabelecimentoId(Long estabelecimentoId);
	List<Agendamento> findByClienteId(Long clienteId);

    List<Agendamento> findByEstabelecimentoIdAndStatusIn(Long estabelecimentoId, List<StatusAgendamento> status);

    
    @Query("SELECT a FROM Agendamento a LEFT JOIN FETCH a.servicos as ags LEFT JOIN FETCH ags.servico LEFT JOIN FETCH a.cliente LEFT JOIN FETCH a.estabelecimento LEFT JOIN FETCH a.avaliacao WHERE a.cliente.id = :clienteId")
    List<Agendamento> findByClienteIdWithDetails(@Param("clienteId") Long clienteId);
}
