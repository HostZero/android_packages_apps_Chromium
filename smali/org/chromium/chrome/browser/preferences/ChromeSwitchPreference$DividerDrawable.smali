.class Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference$DividerDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "ChromeSwitchPreference.java"


# direct methods
.method private constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 121
    return-void
.end method

.method static create(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference$DividerDrawable;
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 113
    new-array v0, v2, [I

    const v1, 0x1010214

    aput v1, v0, v3

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 114
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 115
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    new-instance v0, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference$DividerDrawable;

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference$DividerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method


# virtual methods
.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference$DividerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int v3, v2, v0

    move-object v0, p0

    move v2, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/chrome/browser/preferences/ChromeSwitchPreference$DividerDrawable;->setLayerInset(IIIII)V

    .line 127
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 128
    return-void
.end method
