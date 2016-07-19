.class public Lorg/chromium/chrome/browser/widget/TintedDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "TintedDrawable.java"


# instance fields
.field protected mTint:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 29
    sget v0, Lorg/chromium/chrome/R$color;->dark_mode_tint:I

    invoke-static {p1, v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getColorStateList(Landroid/content/res/Resources;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/TintedDrawable;->mTint:Landroid/content/res/ColorStateList;

    .line 30
    return-void
.end method

.method public static constructTintedDrawable(Landroid/content/res/Resources;I)Lorg/chromium/chrome/browser/widget/TintedDrawable;
    .locals 2

    .prologue
    .line 58
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    new-instance v1, Lorg/chromium/chrome/browser/widget/TintedDrawable;

    invoke-direct {v1, p0, v0}, Lorg/chromium/chrome/browser/widget/TintedDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static constructTintedDrawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Lorg/chromium/chrome/browser/widget/TintedDrawable;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lorg/chromium/chrome/browser/widget/TintedDrawable;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/widget/TintedDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private updateTintColor()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 70
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/TintedDrawable;->mTint:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_0

    .line 72
    :goto_0
    return v0

    .line 71
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/TintedDrawable;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->getState()[I

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 72
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isStateful()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->updateTintColor()Z

    move-result v0

    .line 35
    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->onStateChange([I)Z

    .line 36
    return v0
.end method

.method public setTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/TintedDrawable;->mTint:Landroid/content/res/ColorStateList;

    if-ne v0, p1, :cond_0

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/TintedDrawable;->mTint:Landroid/content/res/ColorStateList;

    .line 51
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->updateTintColor()Z

    goto :goto_0
.end method
