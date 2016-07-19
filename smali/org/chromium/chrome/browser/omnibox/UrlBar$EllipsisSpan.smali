.class Lorg/chromium/chrome/browser/omnibox/UrlBar$EllipsisSpan;
.super Landroid/text/style/ReplacementSpan;
.source "UrlBar.java"


# static fields
.field public static final INSTANCE:Lorg/chromium/chrome/browser/omnibox/UrlBar$EllipsisSpan;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1148
    new-instance v0, Lorg/chromium/chrome/browser/omnibox/UrlBar$EllipsisSpan;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar$EllipsisSpan;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/omnibox/UrlBar$EllipsisSpan;->INSTANCE:Lorg/chromium/chrome/browser/omnibox/UrlBar$EllipsisSpan;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1145
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 2

    .prologue
    .line 1159
    const-string/jumbo v0, "..."

    int-to-float v1, p7

    invoke-virtual {p1, v0, p5, v1, p9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1160
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 1

    .prologue
    .line 1153
    const-string/jumbo v0, "..."

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method
