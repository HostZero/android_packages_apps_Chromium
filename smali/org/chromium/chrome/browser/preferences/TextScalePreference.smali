.class public Lorg/chromium/chrome/browser/preferences/TextScalePreference;
.super Lorg/chromium/chrome/browser/preferences/SeekBarPreference;
.source "TextScalePreference.java"


# instance fields
.field private mFontSizeObserver:Lorg/chromium/chrome/browser/preferences/TextScalePreference$FontSizeObserver;

.field private mFontSizePrefs:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

.field private mPreview:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->mFontSizePrefs:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    .line 46
    new-instance v0, Lorg/chromium/chrome/browser/preferences/TextScalePreference$FontSizeObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/preferences/TextScalePreference$FontSizeObserver;-><init>(Lorg/chromium/chrome/browser/preferences/TextScalePreference;Lorg/chromium/chrome/browser/preferences/TextScalePreference$1;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->mFontSizeObserver:Lorg/chromium/chrome/browser/preferences/TextScalePreference$FontSizeObserver;

    .line 48
    sget v0, Lorg/chromium/chrome/R$layout;->custom_preference:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->setLayoutResource(I)V

    .line 49
    sget v0, Lorg/chromium/chrome/R$layout;->preference_text_scale:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->setWidgetLayoutResource(I)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/preferences/TextScalePreference;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->updatePreview()V

    return-void
.end method

.method private updatePreview()V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->mPreview:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->mPreview:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41500000    # 13.0f

    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->mFontSizePrefs:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->getFontScaleFactor()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 92
    :cond_0
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->onBindView(Landroid/view/View;)V

    .line 61
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->mPreview:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 62
    sget v0, Lorg/chromium/chrome/R$id;->preview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->mPreview:Landroid/widget/TextView;

    .line 63
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->updatePreview()V

    .line 65
    :cond_0
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->mView:Landroid/view/View;

    .line 55
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->mView:Landroid/view/View;

    return-object v0
.end method

.method public startObservingFontPrefs()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->mFontSizePrefs:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->mFontSizeObserver:Lorg/chromium/chrome/browser/preferences/TextScalePreference$FontSizeObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->addObserver(Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$Observer;)Z

    .line 72
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->updatePreview()V

    .line 73
    return-void
.end method

.method public stopObservingFontPrefs()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->mFontSizePrefs:Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/TextScalePreference;->mFontSizeObserver:Lorg/chromium/chrome/browser/preferences/TextScalePreference$FontSizeObserver;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/accessibility/FontSizePrefs;->removeObserver(Lorg/chromium/chrome/browser/accessibility/FontSizePrefs$Observer;)Z

    .line 80
    return-void
.end method
