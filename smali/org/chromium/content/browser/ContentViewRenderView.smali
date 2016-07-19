.class public Lorg/chromium/content/browser/ContentViewRenderView;
.super Landroid/widget/FrameLayout;
.source "ContentViewRenderView.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field private mNativeContentViewRenderView:J

.field private final mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lorg/chromium/content/browser/ContentViewRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ContentViewRenderView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/ContentViewRenderView;)J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mNativeContentViewRenderView:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/ContentViewRenderView;JIIILandroid/view/Surface;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p6}, Lorg/chromium/content/browser/ContentViewRenderView;->nativeSurfaceChanged(JIIILandroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/ContentViewRenderView;J)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/ContentViewRenderView;->nativeSurfaceCreated(J)V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/ContentViewRenderView;J)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/ContentViewRenderView;->nativeSurfaceDestroyed(J)V

    return-void
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/ContentViewRenderView;)Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeInit(J)J
.end method

.method private native nativeSetCurrentContentViewCore(JJ)V
.end method

.method private native nativeSetOverlayVideoMode(JZ)V
.end method

.method private native nativeSurfaceChanged(JIIILandroid/view/Surface;)V
.end method

.method private native nativeSurfaceCreated(J)V
.end method

.method private native nativeSurfaceDestroyed(J)V
.end method

.method private onSwapBuffersCompleted()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewRenderView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    new-instance v0, Lorg/chromium/content/browser/ContentViewRenderView$2;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/ContentViewRenderView$2;-><init>(Lorg/chromium/content/browser/ContentViewRenderView;)V

    invoke-virtual {p0, v0}, Lorg/chromium/content/browser/ContentViewRenderView;->post(Ljava/lang/Runnable;)Z

    .line 181
    :cond_0
    return-void
.end method


# virtual methods
.method protected onReadyToRender()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method
