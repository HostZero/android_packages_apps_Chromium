.class final Lorg/chromium/content/browser/ChildProcessLauncher$4;
.super Lorg/chromium/content/common/IChildProcessCallback$Stub;
.source "ChildProcessLauncher.java"


# instance fields
.field final synthetic val$callbackType:I

.field final synthetic val$childProcessId:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 802
    iput p1, p0, Lorg/chromium/content/browser/ChildProcessLauncher$4;->val$callbackType:I

    iput p2, p0, Lorg/chromium/content/browser/ChildProcessLauncher$4;->val$childProcessId:I

    invoke-direct {p0}, Lorg/chromium/content/common/IChildProcessCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final establishSurfacePeer(ILandroid/view/Surface;II)V
    .locals 3

    .prologue
    .line 814
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$4;->val$callbackType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 815
    const-string/jumbo v0, "ChildProcLauncher"

    const-string/jumbo v1, "Illegal callback for non-GPU process."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 820
    :goto_0
    return-void

    .line 819
    :cond_0
    # invokes: Lorg/chromium/content/browser/ChildProcessLauncher;->nativeEstablishSurfacePeer(ILandroid/view/Surface;II)V
    invoke-static {p1, p2, p3, p4}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$1500(ILandroid/view/Surface;II)V

    goto :goto_0
.end method

.method public final getSurfaceTextureSurface(I)Lorg/chromium/content/common/SurfaceWrapper;
    .locals 3

    .prologue
    .line 867
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$4;->val$callbackType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 868
    const-string/jumbo v0, "ChildProcLauncher"

    const-string/jumbo v1, "Illegal callback for non-renderer process."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 869
    const/4 v0, 0x0

    .line 872
    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$4;->val$childProcessId:I

    # invokes: Lorg/chromium/content/browser/ChildProcessLauncher;->getSurfaceTextureSurface(II)Lorg/chromium/content/common/SurfaceWrapper;
    invoke-static {p1, v0}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$1900(II)Lorg/chromium/content/common/SurfaceWrapper;

    move-result-object v0

    goto :goto_0
.end method

.method public final getViewSurface(I)Lorg/chromium/content/common/SurfaceWrapper;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 825
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$4;->val$callbackType:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 826
    const-string/jumbo v0, "ChildProcLauncher"

    const-string/jumbo v2, "Illegal callback for non-GPU process."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 839
    :goto_0
    return-object v0

    .line 830
    :cond_0
    # getter for: Lorg/chromium/content/browser/ChildProcessLauncher;->sViewSurfaceMap:Ljava/util/Map;
    invoke-static {}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$1600()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 831
    if-nez v0, :cond_1

    .line 832
    const-string/jumbo v0, "ChildProcLauncher"

    const-string/jumbo v2, "Invalid surfaceId."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 833
    goto :goto_0

    .line 835
    :cond_1
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_2

    .line 836
    const-string/jumbo v0, "ChildProcLauncher"

    const-string/jumbo v2, "Requested surface is not valid."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    .line 837
    goto :goto_0

    .line 839
    :cond_2
    new-instance v1, Lorg/chromium/content/common/SurfaceWrapper;

    invoke-direct {v1, v0}, Lorg/chromium/content/common/SurfaceWrapper;-><init>(Landroid/view/Surface;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public final onDownloadStarted(ZI)V
    .locals 3

    .prologue
    .line 879
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$4;->val$callbackType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 880
    const-string/jumbo v0, "ChildProcLauncher"

    const-string/jumbo v1, "Illegal callback for non-download process."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 883
    :cond_0
    return-void
.end method

.method public final registerSurfaceTextureSurface(IILandroid/view/Surface;)V
    .locals 3

    .prologue
    .line 845
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$4;->val$callbackType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 846
    const-string/jumbo v0, "ChildProcLauncher"

    const-string/jumbo v1, "Illegal callback for non-GPU process."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 852
    :goto_0
    return-void

    .line 850
    :cond_0
    # invokes: Lorg/chromium/content/browser/ChildProcessLauncher;->registerSurfaceTextureSurface(IILandroid/view/Surface;)V
    invoke-static {p1, p2, p3}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$1700(IILandroid/view/Surface;)V

    goto :goto_0
.end method

.method public final unregisterSurfaceTextureSurface(II)V
    .locals 3

    .prologue
    .line 857
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessLauncher$4;->val$callbackType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 858
    const-string/jumbo v0, "ChildProcLauncher"

    const-string/jumbo v1, "Illegal callback for non-GPU process."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 863
    :goto_0
    return-void

    .line 862
    :cond_0
    # invokes: Lorg/chromium/content/browser/ChildProcessLauncher;->unregisterSurfaceTextureSurface(II)V
    invoke-static {p1, p2}, Lorg/chromium/content/browser/ChildProcessLauncher;->access$1800(II)V

    goto :goto_0
.end method
