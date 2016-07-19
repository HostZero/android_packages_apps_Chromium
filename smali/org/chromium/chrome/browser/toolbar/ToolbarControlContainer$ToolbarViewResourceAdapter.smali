.class Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceAdapter;
.super Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;
.source "ToolbarControlContainer.java"


# instance fields
.field private final mTabStripHeightPx:I

.field private final mTempPosition:[I

.field private final mToolbar:Lorg/chromium/chrome/browser/toolbar/Toolbar;

.field private final mToolbarActualHeightPx:I

.field private final mToolbarContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lorg/chromium/chrome/browser/toolbar/Toolbar;)V
    .locals 2

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;-><init>(Landroid/view/View;)V

    .line 134
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceAdapter;->mTempPosition:[I

    .line 143
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceAdapter;->mToolbarContainer:Landroid/view/View;

    .line 144
    iput-object p2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceAdapter;->mToolbar:Lorg/chromium/chrome/browser/toolbar/Toolbar;

    .line 145
    sget v0, Lorg/chromium/chrome/R$dimen;->control_container_height:I

    .line 146
    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceAdapter;->mToolbar:Lorg/chromium/chrome/browser/toolbar/Toolbar;

    instance-of v1, v1, Lorg/chromium/chrome/browser/toolbar/CustomTabToolbar;

    if-eqz v1, :cond_0

    .line 147
    sget v0, Lorg/chromium/chrome/R$dimen;->custom_tabs_control_container_height:I

    .line 149
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceAdapter;->mToolbarActualHeightPx:I

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->tab_strip_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceAdapter;->mTabStripHeightPx:I

    .line 153
    return-void
.end method


# virtual methods
.method protected computeContentAperture(Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceAdapter;->mToolbar:Lorg/chromium/chrome/browser/toolbar/Toolbar;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/toolbar/Toolbar;->getLocationBarContentRect(Landroid/graphics/Rect;)V

    .line 202
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceAdapter;->mToolbar:Lorg/chromium/chrome/browser/toolbar/Toolbar;

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceAdapter;->mToolbarContainer:Landroid/view/View;

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceAdapter;->mTempPosition:[I

    invoke-interface {v0, v1, v2}, Lorg/chromium/chrome/browser/toolbar/Toolbar;->getPositionRelativeToContainer(Landroid/view/View;[I)V

    .line 203
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceAdapter;->mTempPosition:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceAdapter;->mTempPosition:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 204
    return-void
.end method

.method protected computeContentPadding(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 195
    const/4 v0, 0x0

    iget v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceAdapter;->mTabStripHeightPx:I

    iget-object v2, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceAdapter;->mToolbarContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceAdapter;->mToolbarActualHeightPx:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 197
    return-void
.end method

.method public forceInvalidate()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->invalidate(Landroid/graphics/Rect;)V

    .line 161
    return-void
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceAdapter;->mToolbar:Lorg/chromium/chrome/browser/toolbar/Toolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceAdapter;->mToolbar:Lorg/chromium/chrome/browser/toolbar/Toolbar;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/toolbar/Toolbar;->isReadyForTextureCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCaptureEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 187
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceAdapter;->mToolbar:Lorg/chromium/chrome/browser/toolbar/Toolbar;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/toolbar/Toolbar;->setTextureCaptureMode(Z)V

    .line 190
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceAdapter;->mToolbar:Lorg/chromium/chrome/browser/toolbar/Toolbar;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/toolbar/Toolbar;->setForceTextureCapture(Z)Z

    .line 191
    return-void
.end method

.method protected onCaptureStart(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 172
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 173
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceAdapter;->mToolbarContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceAdapter;->mToolbarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 176
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 177
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 178
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceAdapter;->mToolbarContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceAdapter;->mToolbarContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 180
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarControlContainer$ToolbarViewResourceAdapter;->mToolbar:Lorg/chromium/chrome/browser/toolbar/Toolbar;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/toolbar/Toolbar;->setTextureCaptureMode(Z)V

    .line 182
    invoke-super {p0, p1, p2}, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->onCaptureStart(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 183
    return-void
.end method
