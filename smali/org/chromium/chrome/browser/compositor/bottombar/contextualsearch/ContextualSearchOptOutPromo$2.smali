.class Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo$2;
.super Ljava/lang/Object;
.source "ContextualSearchOptOutPromo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo$2;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo$2;->this$0:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;

    # getter for: Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;->mHost:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo$ContextualSearchPromoHost;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;->access$000(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo;)Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo$ContextualSearchPromoHost;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchOptOutPromo$ContextualSearchPromoHost;->onPromoButtonClick(Z)V

    .line 113
    return-void
.end method
