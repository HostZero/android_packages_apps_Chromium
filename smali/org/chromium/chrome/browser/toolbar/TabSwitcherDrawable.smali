.class public Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;
.super Lorg/chromium/chrome/browser/widget/TintedDrawable;
.source "TabSwitcherDrawable.java"


# instance fields
.field private final mDoubleDigitTextSize:F

.field private mIncognito:Z

.field private final mSingleDigitTextSize:F

.field private mTabCount:I

.field private final mTextBounds:Landroid/graphics/Rect;

.field private final mTextPaint:Landroid/text/TextPaint;


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;ZLandroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 51
    invoke-direct {p0, p1, p3}, Lorg/chromium/chrome/browser/widget/TintedDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->mTextBounds:Landroid/graphics/Rect;

    .line 52
    if-eqz p2, :cond_0

    sget v0, Lorg/chromium/chrome/R$color;->light_mode_tint:I

    :goto_0
    invoke-static {p1, v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getColorStateList(Landroid/content/res/Resources;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->setTint(Landroid/content/res/ColorStateList;)V

    .line 54
    sget v0, Lorg/chromium/chrome/R$dimen;->toolbar_tab_count_text_size_1_digit:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->mSingleDigitTextSize:F

    .line 56
    sget v0, Lorg/chromium/chrome/R$dimen;->toolbar_tab_count_text_size_2_digit:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->mDoubleDigitTextSize:F

    .line 59
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->mTextPaint:Landroid/text/TextPaint;

    .line 60
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 61
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->mTextPaint:Landroid/text/TextPaint;

    const-string/jumbo v1, "sans-serif-condensed"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 63
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->getColorForState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 64
    return-void

    .line 52
    :cond_0
    sget v0, Lorg/chromium/chrome/R$color;->dark_mode_tint:I

    goto :goto_0
.end method

.method public static createTabSwitcherDrawable(Landroid/content/res/Resources;Z)Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;
    .locals 2

    .prologue
    .line 46
    sget v0, Lorg/chromium/chrome/R$drawable;->btn_tabswitcher:I

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 47
    new-instance v1, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;

    invoke-direct {v1, p0, p1, v0}, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;-><init>(Landroid/content/res/Resources;ZLandroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private getColorForState()I
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->getState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0
.end method

.method private getTabCountString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 112
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->mTabCount:I

    if-gtz v0, :cond_0

    .line 113
    const-string/jumbo v0, ""

    .line 117
    :goto_0
    return-object v0

    .line 114
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->mTabCount:I

    const/16 v1, 0x63

    if-le v0, v1, :cond_2

    .line 115
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->mIncognito:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, ";)"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ":D"

    goto :goto_0

    .line 117
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string/jumbo v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->mTabCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 75
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 77
    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->getTabCountString()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->mTextPaint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 81
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 83
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->mTextBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->mTextBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->mTextBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    .line 86
    int-to-float v2, v2

    int-to-float v1, v1

    iget-object v3, p0, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 88
    :cond_0
    return-void
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->mTabCount:I

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 3

    .prologue
    .line 68
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->onStateChange([I)Z

    move-result v0

    .line 69
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->getColorForState()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 70
    :cond_0
    return v0
.end method

.method public setTint(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->setTint(Landroid/content/res/ColorStateList;)V

    .line 128
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->mTextPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->getColorForState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 129
    :cond_0
    return-void
.end method

.method public updateForTabCount(IZ)V
    .locals 2

    .prologue
    .line 103
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->mTabCount:I

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->mIncognito:Z

    if-ne p2, v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 104
    :cond_0
    iput p1, p0, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->mTabCount:I

    .line 105
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->mIncognito:Z

    .line 106
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->mTabCount:I

    const/16 v1, 0x9

    if-le v0, v1, :cond_1

    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->mDoubleDigitTextSize:F

    .line 107
    :goto_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 108
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->invalidateSelf()V

    goto :goto_0

    .line 106
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/toolbar/TabSwitcherDrawable;->mSingleDigitTextSize:F

    goto :goto_1
.end method
