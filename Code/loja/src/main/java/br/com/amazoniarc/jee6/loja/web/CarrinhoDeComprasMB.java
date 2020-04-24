package br.com.amazoniarc.jee6.loja.web;

import java.io.Serializable;

import javax.annotation.PostConstruct;
import javax.enterprise.context.SessionScoped;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.inject.Inject;
import javax.inject.Named;

import br.com.amazoniarc.jee6.loja.entity.*;

@Named
@SessionScoped
public class CarrinhoDeComprasMB implements Serializable {
  private static final long serialVersionUID = 1172514592649335124L;
  private Pedido pedidoCarrinho;
  private String cupom;
  private Produto produtoRemover;
  @Inject
  private transient UtilsMB utilsMB;

  @PostConstruct
  public void init() {
    pedidoCarrinho = new Pedido();
  }

  public String adicionarItem(Produto produto) {
    pedidoCarrinho.adicionarItem(produto, 1);
    return "carrinho?faces-redirect=true";
  }

  public void removerItem() {
    pedidoCarrinho.removerItem(produtoRemover);
  }

  public void atualizarQuantidadeItem(Produto produto, Integer novaQuantidade) {
    pedidoCarrinho.atualizarQuantidade(produto, novaQuantidade);
  }

  public String fecharPedido() {
    pedidoCarrinho = new Pedido();
    return "pedidoFechado?faces-redirect=true";
  }

  public String aplicarCupom() {
    if (cupom == "itau"){
      pedidoCarrinho = new Pedido();
      pedidoCarrinho.aplicarCupom();
      return "carrinho?faces-redirect=true";
    } else {
      return "carrinho?faces-redirect=true";
    }
  }

  private void adicionarMensagem(FacesMessage.Severity severidade, String chave)
  {
    FacesContext facesContext = FacesContext.getCurrentInstance();
    facesContext.addMessage(null,
        new FacesMessage(severidade, utilsMB.getMessage(chave), null));
  }

  public void recalcularTotal(ItemPedido itemPedido) {
    itemPedido.calcularTotal();
    pedidoCarrinho.calcularTotal();
  }

  public boolean temItens() {
    return pedidoCarrinho.getItens().size() > 0;
  }

  public Pedido getPedidoCarrinho() {
    return pedidoCarrinho;
  }

  public Produto getProdutoRemover() {
    return produtoRemover;
  }

  public void setProdutoRemover(Produto produtoRemover) {
    this.produtoRemover = produtoRemover;
  }

  public String getCupom() {
    return cupom;
  }

  public void setCupom(String cupom) {
    this.cupom = cupom;
  }
}