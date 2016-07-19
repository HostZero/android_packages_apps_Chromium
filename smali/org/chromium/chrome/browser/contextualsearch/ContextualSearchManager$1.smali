.class Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$1;
.super Ljava/lang/Object;
.source "ContextualSearchManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

.field final synthetic val$controlContainer:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$1;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    iput-object p2, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$1;->val$controlContainer:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$1;->val$controlContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$1;->val$controlContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager$1;->this$0:Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;->UNKNOWN:Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchManager;->hideContextualSearch(Lorg/chromium/chrome/browser/compositor/bottombar/OverlayPanel$StateChangeReason;)V

    .line 175
    :cond_0
    return-void
.end method
