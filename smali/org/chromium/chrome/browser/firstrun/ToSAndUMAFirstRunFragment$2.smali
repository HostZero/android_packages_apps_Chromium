.class Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment$2;
.super Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment$FreClickableSpan;
.source "ToSAndUMAFirstRunFragment.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;I)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment$2;->this$0:Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;

    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment$FreClickableSpan;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment$2;->this$0:Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment$2;->this$0:Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;->getPageDelegate()Lorg/chromium/chrome/browser/firstrun/FirstRunPageDelegate;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->terms_of_service_title:I

    sget v2, Lorg/chromium/chrome/R$string;->chrome_terms_of_service_url:I

    invoke-interface {v0, v1, v2}, Lorg/chromium/chrome/browser/firstrun/FirstRunPageDelegate;->showEmbedContentViewActivity(II)V

    goto :goto_0
.end method
