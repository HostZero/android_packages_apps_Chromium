.class public Lorg/chromium/chrome/browser/widget/TintedImageView;
.super Landroid/widget/ImageView;
.source "TintedImageView.java"


# instance fields
.field private mTint:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/chrome/browser/widget/TintedImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/widget/TintedImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lorg/chromium/chrome/R$styleable;->TintedImage:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 40
    sget v1, Lorg/chromium/chrome/R$styleable;->TintedImage_tint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageView;->setTintInternal(Landroid/content/res/ColorStateList;)V

    .line 41
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    return-void
.end method

.method private setTintInternal(Landroid/content/res/ColorStateList;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/TintedImageView;->mTint:Landroid/content/res/ColorStateList;

    .line 62
    return-void
.end method

.method private updateTintColor()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/TintedImageView;->mTint:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/TintedImageView;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/TintedImageView;->getDrawableState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/widget/TintedImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 47
    invoke-direct {p0}, Lorg/chromium/chrome/browser/widget/TintedImageView;->updateTintColor()V

    .line 48
    return-void
.end method
