.class Lorg/chromium/content/browser/input/CardboardVRDevice;
.super Ljava/lang/Object;
.source "CardboardVRDevice.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field private final mHMDManager:Lcom/google/vrtoolkit/cardboard/f;

.field private final mHeadTracker:Lcom/google/vrtoolkit/cardboard/b/e;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/google/vrtoolkit/cardboard/f;

    invoke-direct {v0, p1}, Lcom/google/vrtoolkit/cardboard/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/CardboardVRDevice;->mHMDManager:Lcom/google/vrtoolkit/cardboard/f;

    .line 36
    invoke-static {p1}, Lcom/google/vrtoolkit/cardboard/b/e;->a(Landroid/content/Context;)Lcom/google/vrtoolkit/cardboard/b/e;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/input/CardboardVRDevice;->mHeadTracker:Lcom/google/vrtoolkit/cardboard/b/e;

    .line 37
    iget-object v0, p0, Lorg/chromium/content/browser/input/CardboardVRDevice;->mHeadTracker:Lcom/google/vrtoolkit/cardboard/b/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/vrtoolkit/cardboard/b/e;->a(Z)V

    .line 38
    iget-object v0, p0, Lorg/chromium/content/browser/input/CardboardVRDevice;->mHeadTracker:Lcom/google/vrtoolkit/cardboard/b/e;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/b/e;->a()V

    .line 39
    return-void
.end method

.method private static create(Landroid/content/Context;)Lorg/chromium/content/browser/input/CardboardVRDevice;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lorg/chromium/content/browser/input/CardboardVRDevice;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/CardboardVRDevice;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getDeviceName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lorg/chromium/content/browser/input/CardboardVRDevice;->mHMDManager:Lcom/google/vrtoolkit/cardboard/f;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/f;->a()Lcom/google/vrtoolkit/cardboard/e;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/e;->b()Lcom/google/vrtoolkit/cardboard/a;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFieldOfView([F)V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lorg/chromium/content/browser/input/CardboardVRDevice;->mHMDManager:Lcom/google/vrtoolkit/cardboard/f;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/f;->a()Lcom/google/vrtoolkit/cardboard/e;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/e;->b()Lcom/google/vrtoolkit/cardboard/a;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/a;->d()Lcom/google/vrtoolkit/cardboard/d;

    move-result-object v0

    .line 46
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/d;->e()F

    move-result v2

    aput v2, p1, v1

    .line 47
    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/d;->d()F

    move-result v2

    aput v2, p1, v1

    .line 48
    const/4 v1, 0x2

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/d;->b()F

    move-result v2

    aput v2, p1, v1

    .line 49
    const/4 v1, 0x3

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/d;->c()F

    move-result v0

    aput v0, p1, v1

    .line 50
    return-void
.end method

.method private getIpd()F
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/chromium/content/browser/input/CardboardVRDevice;->mHMDManager:Lcom/google/vrtoolkit/cardboard/f;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/f;->a()Lcom/google/vrtoolkit/cardboard/e;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/e;->b()Lcom/google/vrtoolkit/cardboard/a;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/a;->c()F

    move-result v0

    return v0
.end method

.method private getScreenSize([I)V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lorg/chromium/content/browser/input/CardboardVRDevice;->mHMDManager:Lcom/google/vrtoolkit/cardboard/f;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/f;->a()Lcom/google/vrtoolkit/cardboard/e;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/e;->a()Lcom/google/vrtoolkit/cardboard/i;

    move-result-object v0

    .line 70
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/i;->a()I

    move-result v2

    aput v2, p1, v1

    .line 71
    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/i;->b()I

    move-result v0

    aput v0, p1, v1

    .line 72
    return-void
.end method

.method private getSensorState([F)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lorg/chromium/content/browser/input/CardboardVRDevice;->mHeadTracker:Lcom/google/vrtoolkit/cardboard/b/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/vrtoolkit/cardboard/b/e;->a([FI)V

    .line 77
    return-void
.end method

.method private resetSensor()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/chromium/content/browser/input/CardboardVRDevice;->mHeadTracker:Lcom/google/vrtoolkit/cardboard/b/e;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/b/e;->b()V

    .line 87
    return-void
.end method

.method private stopTracking()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/chromium/content/browser/input/CardboardVRDevice;->mHeadTracker:Lcom/google/vrtoolkit/cardboard/b/e;

    invoke-virtual {v0}, Lcom/google/vrtoolkit/cardboard/b/e;->c()V

    .line 82
    return-void
.end method
