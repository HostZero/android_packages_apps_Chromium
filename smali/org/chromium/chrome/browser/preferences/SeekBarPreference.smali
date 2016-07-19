.class public Lorg/chromium/chrome/browser/preferences/SeekBarPreference;
.super Landroid/preference/Preference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mMax:F

.field private mMin:F

.field private mStep:F

.field mSummary:Ljava/lang/CharSequence;

.field private mSummaryView:Landroid/widget/TextView;

.field private mTrackingTouch:Z

.field private mValue:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->mMin:F

    .line 41
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->mMax:F

    .line 42
    const v0, 0x3d4ccccd    # 0.05f

    iput v0, p0, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->mStep:F

    .line 43
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->mMin:F

    iput v0, p0, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->mValue:F

    .line 44
    return-void
.end method

.method private prefValueToSeekBarProgress(F)I
    .locals 2

    .prologue
    .line 101
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->mMin:F

    sub-float v0, p1, v0

    iget v1, p0, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->mStep:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private seekBarProgressToPrefValue(I)F
    .locals 3

    .prologue
    .line 97
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->mMin:F

    int-to-float v1, p1

    iget v2, p0, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->mStep:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private setValue(FZ)V
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->mMax:F

    iget v1, p0, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->mMin:F

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 106
    iget v1, p0, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->mValue:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 107
    iput v0, p0, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->mValue:F

    .line 108
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->notifyChanged()V

    .line 110
    :cond_0
    return-void
.end method

.method private syncProgress(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->seekBarProgressToPrefValue(I)F

    move-result v0

    .line 118
    iget v1, p0, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->mValue:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 119
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->setValue(FZ)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->mValue:F

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->prefValueToSeekBarProgress(F)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isTrackingTouch()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->mTrackingTouch:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 64
    sget v0, Lorg/chromium/chrome/R$id;->seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 65
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 66
    iget v1, p0, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->mMax:F

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->prefValueToSeekBarProgress(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 67
    iget v1, p0, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->mValue:F

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->prefValueToSeekBarProgress(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 68
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 69
    sget v0, Lorg/chromium/chrome/R$id;->seekbar_amount:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->mSummaryView:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->mSummaryView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .prologue
    .line 129
    if-eqz p3, :cond_0

    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 130
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->mTrackingTouch:Z

    .line 135
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->mTrackingTouch:Z

    .line 140
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->mSummary:Ljava/lang/CharSequence;

    .line 85
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->mSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setValue(F)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/preferences/SeekBarPreference;->setValue(FZ)V

    .line 52
    return-void
.end method
