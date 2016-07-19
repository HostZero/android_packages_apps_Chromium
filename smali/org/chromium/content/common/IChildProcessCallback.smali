.class public interface abstract Lorg/chromium/content/common/IChildProcessCallback;
.super Ljava/lang/Object;
.source "IChildProcessCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract establishSurfacePeer(ILandroid/view/Surface;II)V
.end method

.method public abstract getSurfaceTextureSurface(I)Lorg/chromium/content/common/SurfaceWrapper;
.end method

.method public abstract getViewSurface(I)Lorg/chromium/content/common/SurfaceWrapper;
.end method

.method public abstract onDownloadStarted(ZI)V
.end method

.method public abstract registerSurfaceTextureSurface(IILandroid/view/Surface;)V
.end method

.method public abstract unregisterSurfaceTextureSurface(II)V
.end method
