.class public Lorg/chromium/chrome/browser/document/DocumentActivityIcon;
.super Ljava/lang/Object;
.source "DocumentActivityIcon.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGeneratedIcon:Landroid/graphics/Bitmap;

.field private mGeneratedPageUrl:Ljava/lang/String;

.field private mGenerator:Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/chromium/chrome/browser/document/DocumentActivityIcon;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/16 v2, 0x40

    .line 53
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivityIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x5

    .line 55
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 72
    :goto_0
    return-object p2

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivityIcon;->mGeneratedPageUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object p2, p0, Lorg/chromium/chrome/browser/document/DocumentActivityIcon;->mGeneratedIcon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivityIcon;->mGenerator:Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;

    if-nez v0, :cond_2

    .line 65
    new-instance v0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;

    iget-object v1, p0, Lorg/chromium/chrome/browser/document/DocumentActivityIcon;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    const v5, -0xcdcdce

    const/16 v6, 0x1e

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;-><init>(Landroid/content/Context;IIIII)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivityIcon;->mGenerator:Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;

    .line 70
    :cond_2
    iput-object p1, p0, Lorg/chromium/chrome/browser/document/DocumentActivityIcon;->mGeneratedPageUrl:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivityIcon;->mGenerator:Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->generateIconForUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivityIcon;->mGeneratedIcon:Landroid/graphics/Bitmap;

    .line 72
    iget-object p2, p0, Lorg/chromium/chrome/browser/document/DocumentActivityIcon;->mGeneratedIcon:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
