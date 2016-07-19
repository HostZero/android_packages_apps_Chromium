.class Lorg/chromium/content/browser/ContentViewRenderView$1;
.super Ljava/lang/Object;
.source "ContentViewRenderView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/ContentViewRenderView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ContentViewRenderView$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 8

    .prologue
    .line 69
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewRenderView$1;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$1;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    # getter for: Lorg/chromium/content/browser/ContentViewRenderView;->mNativeContentViewRenderView:J
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->access$000(Lorg/chromium/content/browser/ContentViewRenderView;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 70
    :cond_0
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewRenderView$1;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$1;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    # getter for: Lorg/chromium/content/browser/ContentViewRenderView;->mNativeContentViewRenderView:J
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->access$000(Lorg/chromium/content/browser/ContentViewRenderView;)J

    move-result-wide v2

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v7

    move v4, p2

    move v5, p3

    move v6, p4

    # invokes: Lorg/chromium/content/browser/ContentViewRenderView;->nativeSurfaceChanged(JIIILandroid/view/Surface;)V
    invoke-static/range {v1 .. v7}, Lorg/chromium/content/browser/ContentViewRenderView;->access$100(Lorg/chromium/content/browser/ContentViewRenderView;JIIILandroid/view/Surface;)V

    .line 72
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$1;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewRenderView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$1;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewRenderView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p3, p4}, Lorg/chromium/content/browser/ContentViewCore;->onPhysicalBackingSizeChanged(II)V

    .line 76
    :cond_1
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    .prologue
    .line 80
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewRenderView$1;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$1;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    # getter for: Lorg/chromium/content/browser/ContentViewRenderView;->mNativeContentViewRenderView:J
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->access$000(Lorg/chromium/content/browser/ContentViewRenderView;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$1;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewRenderView$1;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    # getter for: Lorg/chromium/content/browser/ContentViewRenderView;->mNativeContentViewRenderView:J
    invoke-static {v1}, Lorg/chromium/content/browser/ContentViewRenderView;->access$000(Lorg/chromium/content/browser/ContentViewRenderView;)J

    move-result-wide v2

    # invokes: Lorg/chromium/content/browser/ContentViewRenderView;->nativeSurfaceCreated(J)V
    invoke-static {v0, v2, v3}, Lorg/chromium/content/browser/ContentViewRenderView;->access$200(Lorg/chromium/content/browser/ContentViewRenderView;J)V

    .line 83
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$1;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->onReadyToRender()V

    .line 84
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    .prologue
    .line 88
    sget-boolean v0, Lorg/chromium/content/browser/ContentViewRenderView$1;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$1;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    # getter for: Lorg/chromium/content/browser/ContentViewRenderView;->mNativeContentViewRenderView:J
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewRenderView;->access$000(Lorg/chromium/content/browser/ContentViewRenderView;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView$1;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewRenderView$1;->this$0:Lorg/chromium/content/browser/ContentViewRenderView;

    # getter for: Lorg/chromium/content/browser/ContentViewRenderView;->mNativeContentViewRenderView:J
    invoke-static {v1}, Lorg/chromium/content/browser/ContentViewRenderView;->access$000(Lorg/chromium/content/browser/ContentViewRenderView;)J

    move-result-wide v2

    # invokes: Lorg/chromium/content/browser/ContentViewRenderView;->nativeSurfaceDestroyed(J)V
    invoke-static {v0, v2, v3}, Lorg/chromium/content/browser/ContentViewRenderView;->access$300(Lorg/chromium/content/browser/ContentViewRenderView;J)V

    .line 90
    return-void
.end method
