.class Lorg/chromium/content/browser/ContentViewCore$2;
.super Ljava/lang/Object;
.source "ContentViewCore.java"

# interfaces
.implements Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/ContentViewCore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 727
    const-class v0, Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ContentViewCore$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore$2;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttachedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$2;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    # getter for: Lorg/chromium/content/browser/ContentViewCore;->mContainerView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1200(Lorg/chromium/content/browser/ContentViewCore;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getNewShowKeyboardReceiver()Landroid/os/ResultReceiver;
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$2;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getNewShowKeyboardReceiver()Landroid/os/ResultReceiver;

    move-result-object v0

    return-object v0
.end method

.method public onImeEvent()V
    .locals 2

    .prologue
    .line 730
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$2;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    # getter for: Lorg/chromium/content/browser/ContentViewCore;->mPopupZoomer:Lorg/chromium/content/browser/PopupZoomer;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$800(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/PopupZoomer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/PopupZoomer;->hide(Z)V

    .line 731
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$2;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewClient;->onImeEvent()V

    .line 732
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$2;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    # getter for: Lorg/chromium/content/browser/ContentViewCore;->mFocusedNodeEditable:Z
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$900(Lorg/chromium/content/browser/ContentViewCore;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$2;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    # invokes: Lorg/chromium/content/browser/ContentViewCore;->dismissTextHandles()V
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1000(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 733
    :cond_0
    return-void
.end method

.method public onKeyboardBoundsUnchanged()V
    .locals 1

    .prologue
    .line 737
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewCore$2;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$2;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    # getter for: Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1100(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 738
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$2;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    # getter for: Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1100(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->scrollFocusedEditableNodeIntoView()V

    .line 739
    return-void
.end method

.method public performContextMenuAction(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 743
    sget-boolean v1, Lorg/chromium/content/browser/ContentViewCore$2;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$2;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    # getter for: Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;
    invoke-static {v1}, Lorg/chromium/content/browser/ContentViewCore;->access$1100(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 744
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 758
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 746
    :pswitch_0
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$2;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    # getter for: Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;
    invoke-static {v1}, Lorg/chromium/content/browser/ContentViewCore;->access$1100(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->selectAll()V

    goto :goto_0

    .line 749
    :pswitch_1
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$2;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    # getter for: Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;
    invoke-static {v1}, Lorg/chromium/content/browser/ContentViewCore;->access$1100(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->cut()V

    goto :goto_0

    .line 752
    :pswitch_2
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$2;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    # getter for: Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;
    invoke-static {v1}, Lorg/chromium/content/browser/ContentViewCore;->access$1100(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->copy()V

    goto :goto_0

    .line 755
    :pswitch_3
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$2;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    # getter for: Lorg/chromium/content/browser/ContentViewCore;->mWebContents:Lorg/chromium/content_public/browser/WebContents;
    invoke-static {v1}, Lorg/chromium/content/browser/ContentViewCore;->access$1100(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/content_public/browser/WebContents;->paste()V

    goto :goto_0

    .line 744
    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
