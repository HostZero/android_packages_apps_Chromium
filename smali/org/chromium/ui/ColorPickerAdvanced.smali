.class public Lorg/chromium/ui/ColorPickerAdvanced;
.super Landroid/widget/LinearLayout;
.source "ColorPickerAdvanced.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mCurrentColor:I

.field private final mCurrentHsvValues:[F

.field mHueDetails:Lorg/chromium/ui/ColorPickerAdvancedComponent;

.field private mOnColorChangedListener:Lorg/chromium/ui/OnColorChangedListener;

.field mSaturationDetails:Lorg/chromium/ui/ColorPickerAdvancedComponent;

.field mValueDetails:Lorg/chromium/ui/ColorPickerAdvancedComponent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mCurrentHsvValues:[F

    .line 57
    invoke-direct {p0}, Lorg/chromium/ui/ColorPickerAdvanced;->init()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mCurrentHsvValues:[F

    .line 47
    invoke-direct {p0}, Lorg/chromium/ui/ColorPickerAdvanced;->init()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mCurrentHsvValues:[F

    .line 52
    invoke-direct {p0}, Lorg/chromium/ui/ColorPickerAdvanced;->init()V

    .line 53
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/chromium/ui/ColorPickerAdvanced;->setOrientation(I)V

    .line 66
    sget v0, Lorg/chromium/ui/R$string;->color_picker_hue:I

    const/16 v1, 0x168

    invoke-virtual {p0, v0, v1, p0}, Lorg/chromium/ui/ColorPickerAdvanced;->createAndAddNewGradient(IILandroid/widget/SeekBar$OnSeekBarChangeListener;)Lorg/chromium/ui/ColorPickerAdvancedComponent;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mHueDetails:Lorg/chromium/ui/ColorPickerAdvancedComponent;

    .line 68
    sget v0, Lorg/chromium/ui/R$string;->color_picker_saturation:I

    invoke-virtual {p0, v0, v2, p0}, Lorg/chromium/ui/ColorPickerAdvanced;->createAndAddNewGradient(IILandroid/widget/SeekBar$OnSeekBarChangeListener;)Lorg/chromium/ui/ColorPickerAdvancedComponent;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mSaturationDetails:Lorg/chromium/ui/ColorPickerAdvancedComponent;

    .line 70
    sget v0, Lorg/chromium/ui/R$string;->color_picker_value:I

    invoke-virtual {p0, v0, v2, p0}, Lorg/chromium/ui/ColorPickerAdvanced;->createAndAddNewGradient(IILandroid/widget/SeekBar$OnSeekBarChangeListener;)Lorg/chromium/ui/ColorPickerAdvancedComponent;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mValueDetails:Lorg/chromium/ui/ColorPickerAdvancedComponent;

    .line 72
    invoke-direct {p0}, Lorg/chromium/ui/ColorPickerAdvanced;->refreshGradientComponents()V

    .line 73
    return-void
.end method

.method private notifyColorChanged()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mOnColorChangedListener:Lorg/chromium/ui/OnColorChangedListener;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mOnColorChangedListener:Lorg/chromium/ui/OnColorChangedListener;

    invoke-virtual {p0}, Lorg/chromium/ui/ColorPickerAdvanced;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/ui/OnColorChangedListener;->onColorChanged(I)V

    .line 133
    :cond_0
    return-void
.end method

.method private refreshGradientComponents()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v4, 0x0

    .line 221
    iget-object v0, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mCurrentHsvValues:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 222
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 223
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 226
    iget-object v1, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mCurrentHsvValues:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 227
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 228
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 232
    iget-object v2, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mHueDetails:Lorg/chromium/ui/ColorPickerAdvancedComponent;

    iget-object v3, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mCurrentHsvValues:[F

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lorg/chromium/ui/ColorPickerAdvancedComponent;->setValue(F)V

    .line 233
    iget-object v2, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mSaturationDetails:Lorg/chromium/ui/ColorPickerAdvancedComponent;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Lorg/chromium/ui/ColorPickerAdvancedComponent;->setValue(F)V

    .line 234
    iget-object v0, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mValueDetails:Lorg/chromium/ui/ColorPickerAdvancedComponent;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/chromium/ui/ColorPickerAdvancedComponent;->setValue(F)V

    .line 236
    invoke-direct {p0}, Lorg/chromium/ui/ColorPickerAdvanced;->updateHueGradient()V

    .line 237
    invoke-direct {p0}, Lorg/chromium/ui/ColorPickerAdvanced;->updateSaturationGradient()V

    .line 238
    invoke-direct {p0}, Lorg/chromium/ui/ColorPickerAdvanced;->updateValueGradient()V

    .line 239
    return-void
.end method

.method private updateHueGradient()V
    .locals 7

    .prologue
    const/4 v6, 0x7

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 165
    const/4 v0, 0x3

    new-array v2, v0, [F

    .line 166
    iget-object v0, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mCurrentHsvValues:[F

    aget v0, v0, v3

    aput v0, v2, v3

    .line 167
    iget-object v0, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mCurrentHsvValues:[F

    aget v0, v0, v4

    aput v0, v2, v4

    .line 169
    new-array v3, v6, [I

    move v0, v1

    .line 171
    :goto_0
    if-ge v0, v6, :cond_0

    .line 172
    int-to-float v4, v0

    const/high16 v5, 0x42700000    # 60.0f

    mul-float/2addr v4, v5

    aput v4, v2, v1

    .line 173
    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    aput v4, v3, v0

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mHueDetails:Lorg/chromium/ui/ColorPickerAdvancedComponent;

    invoke-virtual {v0, v3}, Lorg/chromium/ui/ColorPickerAdvancedComponent;->setGradientColors([I)V

    .line 176
    return-void
.end method

.method private updateSaturationGradient()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 183
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 184
    iget-object v1, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mCurrentHsvValues:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 185
    const/4 v1, 0x0

    aput v1, v0, v4

    .line 186
    iget-object v1, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mCurrentHsvValues:[F

    aget v1, v1, v2

    aput v1, v0, v2

    .line 188
    new-array v1, v2, [I

    .line 190
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    aput v2, v1, v3

    .line 192
    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v4

    .line 193
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    aput v0, v1, v4

    .line 194
    iget-object v0, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mSaturationDetails:Lorg/chromium/ui/ColorPickerAdvancedComponent;

    invoke-virtual {v0, v1}, Lorg/chromium/ui/ColorPickerAdvancedComponent;->setGradientColors([I)V

    .line 195
    return-void
.end method

.method private updateValueGradient()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 202
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 203
    iget-object v1, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mCurrentHsvValues:[F

    aget v1, v1, v3

    aput v1, v0, v3

    .line 204
    iget-object v1, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mCurrentHsvValues:[F

    aget v1, v1, v4

    aput v1, v0, v4

    .line 205
    const/4 v1, 0x0

    aput v1, v0, v5

    .line 207
    new-array v1, v5, [I

    .line 209
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    aput v2, v1, v3

    .line 211
    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v5

    .line 212
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    aput v0, v1, v4

    .line 213
    iget-object v0, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mValueDetails:Lorg/chromium/ui/ColorPickerAdvancedComponent;

    invoke-virtual {v0, v1}, Lorg/chromium/ui/ColorPickerAdvancedComponent;->setGradientColors([I)V

    .line 214
    return-void
.end method


# virtual methods
.method public createAndAddNewGradient(IILandroid/widget/SeekBar$OnSeekBarChangeListener;)Lorg/chromium/ui/ColorPickerAdvancedComponent;
    .locals 3

    .prologue
    .line 88
    invoke-virtual {p0}, Lorg/chromium/ui/ColorPickerAdvanced;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 90
    sget v1, Lorg/chromium/ui/R$layout;->color_picker_advanced_component:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 91
    invoke-virtual {p0, v0}, Lorg/chromium/ui/ColorPickerAdvanced;->addView(Landroid/view/View;)V

    .line 93
    new-instance v1, Lorg/chromium/ui/ColorPickerAdvancedComponent;

    invoke-direct {v1, v0, p1, p2, p3}, Lorg/chromium/ui/ColorPickerAdvancedComponent;-><init>(Landroid/view/View;IILandroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-object v1
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mCurrentColor:I

    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    .line 145
    if-eqz p3, :cond_0

    .line 146
    iget-object v0, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mCurrentHsvValues:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mHueDetails:Lorg/chromium/ui/ColorPickerAdvancedComponent;

    invoke-virtual {v2}, Lorg/chromium/ui/ColorPickerAdvancedComponent;->getValue()F

    move-result v2

    aput v2, v0, v1

    .line 147
    iget-object v0, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mCurrentHsvValues:[F

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mSaturationDetails:Lorg/chromium/ui/ColorPickerAdvancedComponent;

    invoke-virtual {v2}, Lorg/chromium/ui/ColorPickerAdvancedComponent;->getValue()F

    move-result v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 148
    iget-object v0, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mCurrentHsvValues:[F

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mValueDetails:Lorg/chromium/ui/ColorPickerAdvancedComponent;

    invoke-virtual {v2}, Lorg/chromium/ui/ColorPickerAdvancedComponent;->getValue()F

    move-result v2

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 150
    iget-object v0, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mCurrentHsvValues:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iput v0, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mCurrentColor:I

    .line 152
    invoke-direct {p0}, Lorg/chromium/ui/ColorPickerAdvanced;->updateHueGradient()V

    .line 153
    invoke-direct {p0}, Lorg/chromium/ui/ColorPickerAdvanced;->updateSaturationGradient()V

    .line 154
    invoke-direct {p0}, Lorg/chromium/ui/ColorPickerAdvanced;->updateValueGradient()V

    .line 156
    invoke-direct {p0}, Lorg/chromium/ui/ColorPickerAdvanced;->notifyColorChanged()V

    .line 158
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public setColor(I)V
    .locals 2

    .prologue
    .line 121
    iput p1, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mCurrentColor:I

    .line 122
    iget v0, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mCurrentColor:I

    iget-object v1, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mCurrentHsvValues:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 123
    invoke-direct {p0}, Lorg/chromium/ui/ColorPickerAdvanced;->refreshGradientComponents()V

    .line 124
    return-void
.end method

.method public setListener(Lorg/chromium/ui/OnColorChangedListener;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lorg/chromium/ui/ColorPickerAdvanced;->mOnColorChangedListener:Lorg/chromium/ui/OnColorChangedListener;

    .line 106
    return-void
.end method
