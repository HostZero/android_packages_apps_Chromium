.class public Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;
.super Landroid/widget/LinearLayout;
.source "DistilledPagePrefsView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$Observer;


# static fields
.field private static final VIEW_LAYOUT:I


# instance fields
.field private final mColorModeButtons:Ljava/util/Map;

.field private final mDistilledPagePrefs:Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;

.field private mFontFamilySpinner:Landroid/widget/Spinner;

.field private mFontScaleSeekBar:Landroid/widget/SeekBar;

.field private mFontScaleTextView:Landroid/widget/TextView;

.field private final mPercentageFormatter:Ljava/text/NumberFormat;

.field private mRadioGroup:Landroid/widget/RadioGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget v0, Lorg/chromium/chrome/R$layout;->distilled_page_prefs_view:I

    sput v0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->VIEW_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/dom_distiller/DomDistillerServiceFactory;->getForProfile(Lorg/chromium/chrome/browser/profiles/Profile;)Lorg/chromium/components/dom_distiller/core/DomDistillerService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/components/dom_distiller/core/DomDistillerService;->getDistilledPagePrefs()Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mDistilledPagePrefs:Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;

    .line 73
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/chromium/components/dom_distiller/core/Theme;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mColorModeButtons:Ljava/util/Map;

    .line 74
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mPercentageFormatter:Ljava/text/NumberFormat;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;)Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mDistilledPagePrefs:Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;

    return-object v0
.end method

.method public static create(Landroid/content/Context;)Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;
    .locals 3

    .prologue
    .line 78
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->VIEW_LAYOUT:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;

    return-object v0
.end method

.method private initFontFamilySpinner()V
    .locals 5

    .prologue
    .line 112
    new-instance v0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView$1;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090008

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lorg/chromium/chrome/R$array;->distiller_mode_font_family_values:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView$1;-><init>(Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;Landroid/content/Context;I[Ljava/lang/CharSequence;)V

    .line 143
    sget v1, Lorg/chromium/chrome/R$layout;->distilled_page_font_family_spinner:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 144
    iget-object v1, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mFontFamilySpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 145
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mFontFamilySpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mDistilledPagePrefs:Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;

    invoke-virtual {v1}, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;->getFontFamily()Lorg/chromium/components/dom_distiller/core/FontFamily;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/components/dom_distiller/core/FontFamily;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 146
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mFontFamilySpinner:Landroid/widget/Spinner;

    new-instance v1, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView$2;-><init>(Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 160
    return-void
.end method

.method private initializeAndGetButton(ILorg/chromium/components/dom_distiller/core/Theme;)Landroid/widget/RadioButton;
    .locals 2

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 247
    new-instance v1, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView$3;

    invoke-direct {v1, p0, p2}, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView$3;-><init>(Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;Lorg/chromium/components/dom_distiller/core/Theme;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    return-object v0
.end method

.method private setFontScaleProgress(F)V
    .locals 4

    .prologue
    .line 262
    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 263
    iget-object v1, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mFontScaleSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 264
    return-void
.end method

.method private setFontScaleTextView(F)V
    .locals 4

    .prologue
    .line 270
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mFontScaleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mPercentageFormatter:Ljava/text/NumberFormat;

    float-to-double v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 191
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 192
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mDistilledPagePrefs:Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;

    invoke-virtual {v0, p0}, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;->addObserver(Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$Observer;)Z

    .line 193
    return-void
.end method

.method public onChangeFontFamily(Lorg/chromium/components/dom_distiller/core/FontFamily;)V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mFontFamilySpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Lorg/chromium/components/dom_distiller/core/FontFamily;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 206
    return-void
.end method

.method public onChangeFontScaling(F)V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->setFontScaleTextView(F)V

    .line 219
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->setFontScaleProgress(F)V

    .line 220
    return-void
.end method

.method public onChangeTheme(Lorg/chromium/components/dom_distiller/core/Theme;)V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mColorModeButtons:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 214
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 198
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mDistilledPagePrefs:Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;

    invoke-virtual {v0, p0}, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;->removeObserver(Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs$Observer;)Z

    .line 199
    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    .prologue
    .line 90
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 91
    sget v0, Lorg/chromium/chrome/R$id;->radio_button_group:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 92
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mColorModeButtons:Ljava/util/Map;

    sget-object v1, Lorg/chromium/components/dom_distiller/core/Theme;->LIGHT:Lorg/chromium/components/dom_distiller/core/Theme;

    sget v2, Lorg/chromium/chrome/R$id;->light_mode:I

    sget-object v3, Lorg/chromium/components/dom_distiller/core/Theme;->LIGHT:Lorg/chromium/components/dom_distiller/core/Theme;

    invoke-direct {p0, v2, v3}, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->initializeAndGetButton(ILorg/chromium/components/dom_distiller/core/Theme;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mColorModeButtons:Ljava/util/Map;

    sget-object v1, Lorg/chromium/components/dom_distiller/core/Theme;->DARK:Lorg/chromium/components/dom_distiller/core/Theme;

    sget v2, Lorg/chromium/chrome/R$id;->dark_mode:I

    sget-object v3, Lorg/chromium/components/dom_distiller/core/Theme;->DARK:Lorg/chromium/components/dom_distiller/core/Theme;

    invoke-direct {p0, v2, v3}, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->initializeAndGetButton(ILorg/chromium/components/dom_distiller/core/Theme;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mColorModeButtons:Ljava/util/Map;

    sget-object v1, Lorg/chromium/components/dom_distiller/core/Theme;->SEPIA:Lorg/chromium/components/dom_distiller/core/Theme;

    sget v2, Lorg/chromium/chrome/R$id;->sepia_mode:I

    sget-object v3, Lorg/chromium/components/dom_distiller/core/Theme;->SEPIA:Lorg/chromium/components/dom_distiller/core/Theme;

    invoke-direct {p0, v2, v3}, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->initializeAndGetButton(ILorg/chromium/components/dom_distiller/core/Theme;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mColorModeButtons:Ljava/util/Map;

    iget-object v1, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mDistilledPagePrefs:Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;

    invoke-virtual {v1}, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;->getTheme()Lorg/chromium/components/dom_distiller/core/Theme;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 100
    sget v0, Lorg/chromium/chrome/R$id;->font_size:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mFontScaleSeekBar:Landroid/widget/SeekBar;

    .line 101
    sget v0, Lorg/chromium/chrome/R$id;->font_size_percentage:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mFontScaleTextView:Landroid/widget/TextView;

    .line 103
    sget v0, Lorg/chromium/chrome/R$id;->font_family:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mFontFamilySpinner:Landroid/widget/Spinner;

    .line 104
    invoke-direct {p0}, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->initFontFamilySpinner()V

    .line 107
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mDistilledPagePrefs:Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;

    invoke-virtual {v0}, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;->getFontScaling()F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->onChangeFontScaling(F)V

    .line 108
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mFontScaleSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 109
    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 164
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 166
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mColorModeButtons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 167
    invoke-virtual {v0}, Landroid/widget/RadioButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 168
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 171
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 175
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mColorModeButtons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 176
    invoke-virtual {v0}, Landroid/widget/RadioButton;->getLineCount()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 177
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 178
    iget-object v0, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mColorModeButtons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 179
    invoke-virtual {v0}, Landroid/widget/RadioButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 180
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 186
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 187
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .prologue
    .line 228
    int-to-float v0, p2

    const/high16 v1, 0x41a00000    # 20.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    .line 229
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->setFontScaleTextView(F)V

    .line 230
    if-eqz p3, :cond_0

    .line 231
    iget-object v1, p0, Lorg/chromium/chrome/browser/dom_distiller/DistilledPagePrefsView;->mDistilledPagePrefs:Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;

    invoke-virtual {v1, v0}, Lorg/chromium/components/dom_distiller/core/DistilledPagePrefs;->setFontScaling(F)V

    .line 233
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 239
    return-void
.end method
