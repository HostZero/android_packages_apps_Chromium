.class public Lorg/chromium/chrome/browser/webapps/WebappUrlBar;
.super Landroid/widget/FrameLayout;
.source "WebappUrlBar.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private mCurrentIconResource:I

.field private mCurrentlyDisplayedUrl:Ljava/lang/String;

.field private final mIconResourceWidths:Landroid/util/SparseIntArray;

.field private final mSeparator:Landroid/view/View;

.field private final mUrlBar:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v3, -0x2

    const/4 v4, 0x1

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->mIconResourceWidths:Landroid/util/SparseIntArray;

    .line 59
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->mUrlBar:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->mUrlBar:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 61
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->mUrlBar:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 62
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->mUrlBar:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 63
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->mUrlBar:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 64
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->mSeparator:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->mUrlBar:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->mSeparator:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x50

    invoke-direct {v1, v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->mSeparator:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$color;->webapp_url_bar_separator:I

    invoke-static {v1, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->webapp_url_bar_bg:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->setBackgroundColor(I)V

    .line 81
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->mUrlBar:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 82
    return-void
.end method

.method private static createURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 3

    .prologue
    .line 139
    const-string/jumbo v0, " "

    const-string/jumbo v1, "%20"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :try_start_0
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    const-string/jumbo v1, "WebappUrlBar"

    const-string/jumbo v2, "Failed to convert URI: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateDisplayedUrl(Ljava/lang/String;Ljava/net/URI;)V
    .locals 2

    .prologue
    .line 162
    iget v0, p0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->mCurrentIconResource:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 164
    :goto_0
    if-eqz p2, :cond_0

    .line 165
    invoke-static {p2, v0}, Lorg/chromium/chrome/browser/util/UrlUtilities;->formatUrlForSecurityDisplay(Ljava/net/URI;Z)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p1, v0

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->mUrlBar:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->mCurrentlyDisplayedUrl:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    iput-object p1, p0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->mCurrentlyDisplayedUrl:Ljava/lang/String;

    .line 173
    :cond_1
    return-void

    .line 162
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSecurityIcon(I)V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 150
    invoke-static {p1, v3}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getSecurityIconResource(IZ)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->mCurrentIconResource:I

    .line 152
    iget v0, p0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->mCurrentIconResource:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->mIconResourceWidths:Landroid/util/SparseIntArray;

    iget v1, p0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->mCurrentIconResource:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 153
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->mCurrentIconResource:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->mIconResourceWidths:Landroid/util/SparseIntArray;

    iget v2, p0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->mCurrentIconResource:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 157
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->mUrlBar:Landroid/widget/TextView;

    iget v1, p0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->mCurrentIconResource:I

    invoke-static {v0, v1, v3, v3, v3}, Lorg/chromium/base/ApiCompatibilityUtils;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V

    .line 159
    return-void
.end method


# virtual methods
.method protected getCurrentIconResourceForTests()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->mCurrentIconResource:I

    return v0
.end method

.method protected getDisplayedUrlForTests()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->mUrlBar:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->mUrlBar:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 118
    if-nez v2, :cond_0

    .line 134
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->mUrlBar:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    .line 124
    iget v0, p0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->mCurrentIconResource:I

    if-nez v0, :cond_1

    move v0, v1

    .line 126
    :goto_1
    sub-int v0, v3, v0

    .line 127
    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    float-to-int v2, v2

    .line 129
    if-le v2, v0, :cond_2

    .line 130
    iget-object v3, p0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->mUrlBar:Landroid/widget/TextView;

    sub-int v0, v2, v0

    invoke-virtual {v3, v0, v1}, Landroid/widget/TextView;->scrollTo(II)V

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->mIconResourceWidths:Landroid/util/SparseIntArray;

    iget v4, p0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->mCurrentIconResource:I

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_1

    .line 132
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->mUrlBar:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->scrollTo(II)V

    goto :goto_0
.end method

.method public update(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 90
    invoke-static {p1}, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->createURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 91
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->updateSecurityIcon(I)V

    .line 92
    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/webapps/WebappUrlBar;->updateDisplayedUrl(Ljava/lang/String;Ljava/net/URI;)V

    .line 93
    return-void
.end method
