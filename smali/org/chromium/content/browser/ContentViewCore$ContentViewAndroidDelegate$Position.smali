.class Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;
.super Ljava/lang/Object;
.source "ContentViewCore.java"


# instance fields
.field private final mHeight:F

.field private final mWidth:F

.field private final mX:F

.field private final mY:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput p1, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->mX:F

    .line 164
    iput p2, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->mY:F

    .line 165
    iput p3, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->mWidth:F

    .line 166
    iput p4, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->mHeight:F

    .line 167
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;)F
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->mX:F

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;)F
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->mY:F

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;)F
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->mWidth:F

    return v0
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;)F
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->mHeight:F

    return v0
.end method
