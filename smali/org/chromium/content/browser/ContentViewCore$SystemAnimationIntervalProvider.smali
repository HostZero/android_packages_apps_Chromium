.class Lorg/chromium/content/browser/ContentViewCore$SystemAnimationIntervalProvider;
.super Ljava/lang/Object;
.source "ContentViewCore.java"

# interfaces
.implements Lorg/chromium/content/browser/input/AnimationIntervalProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/content/browser/ContentViewCore$1;)V
    .locals 0

    .prologue
    .line 357
    invoke-direct {p0}, Lorg/chromium/content/browser/ContentViewCore$SystemAnimationIntervalProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastAnimationFrameInterval()J
    .locals 2

    .prologue
    .line 360
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
