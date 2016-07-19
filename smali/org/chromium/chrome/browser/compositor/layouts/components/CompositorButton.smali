.class public Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;
.super Ljava/lang/Object;
.source "CompositorButton.java"

# interfaces
.implements Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;
.implements Lorg/chromium/chrome/browser/compositor/layouts/components/VirtualView;


# instance fields
.field private mAccessibilityDescription:Ljava/lang/String;

.field private mAccessibilityDescriptionIncognito:Ljava/lang/String;

.field private final mBounds:Landroid/graphics/RectF;

.field private final mCacheBounds:Landroid/graphics/RectF;

.field private mClickSlop:F

.field private mIncognitoPressedResource:I

.field private mIncognitoResource:I

.field private mIsEnabled:Z

.field private mIsIncognito:Z

.field private mIsPressed:Z

.field private mIsVisible:Z

.field private mOpacity:F

.field private mPressedResource:I

.field private mResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;FF)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mBounds:Landroid/graphics/RectF;

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mCacheBounds:Landroid/graphics/RectF;

    .line 54
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v1, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 56
    iput v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mOpacity:F

    .line 57
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mIsPressed:Z

    .line 58
    iput-boolean v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mIsVisible:Z

    .line 59
    iput-boolean v3, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mIsIncognito:Z

    .line 60
    iput-boolean v4, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mIsEnabled:Z

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v1, v2, v1

    .line 64
    sget v2, Lorg/chromium/chrome/R$dimen;->compositor_button_slop:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mClickSlop:F

    .line 65
    return-void
.end method


# virtual methods
.method public checkClicked(FF)Z
    .locals 3

    .prologue
    .line 272
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mOpacity:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mIsVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mIsEnabled:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 276
    :goto_0
    return v0

    .line 274
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mCacheBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 275
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mCacheBounds:Landroid/graphics/RectF;

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mClickSlop:F

    neg-float v1, v1

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mClickSlop:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 276
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mCacheBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    goto :goto_0
.end method

.method public click(FF)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 313
    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->checkClicked(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setPressed(Z)V

    .line 315
    const/4 v0, 0x1

    .line 317
    :cond_0
    return v0
.end method

.method public drag(FF)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 286
    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->checkClicked(FF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setPressed(Z)V

    .line 290
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->isPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public getAccessibilityDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mIsIncognito:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mAccessibilityDescriptionIncognito:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mAccessibilityDescription:Ljava/lang/String;

    goto :goto_0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    return v0
.end method

.method public getOpacity()F
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mOpacity:F

    return v0
.end method

.method public getResourceId()I
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mIncognitoPressedResource:I

    .line 262
    :goto_0
    return v0

    .line 260
    :cond_0
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mPressedResource:I

    goto :goto_0

    .line 262
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->isIncognito()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mIncognitoResource:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mResource:I

    goto :goto_0
.end method

.method public getTouchTarget(Landroid/graphics/RectF;)V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 109
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mClickSlop:F

    neg-float v0, v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mClickSlop:F

    neg-float v1, v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 110
    return-void
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    return v0
.end method

.method public isIncognito()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mIsIncognito:Z

    return v0
.end method

.method public isPressed()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mIsPressed:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mIsVisible:Z

    return v0
.end method

.method public onDown(FF)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 300
    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->checkClicked(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setPressed(Z)V

    .line 304
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onPropertyAnimationFinished(Ljava/lang/Enum;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->onPropertyAnimationFinished(Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;)V

    return-void
.end method

.method public onPropertyAnimationFinished(Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;)V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

.method public onUpOrCancel()Z
    .locals 2

    .prologue
    .line 325
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->isPressed()Z

    move-result v0

    .line 326
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setPressed(Z)V

    .line 327
    return v0
.end method

.method public setAccessibilityDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mAccessibilityDescription:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mAccessibilityDescriptionIncognito:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setBounds(Landroid/graphics/RectF;)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 175
    return-void
.end method

.method public setClickSlop(F)V
    .locals 0

    .prologue
    .line 252
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mClickSlop:F

    .line 253
    return-void
.end method

.method public setHeight(F)V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 168
    return-void
.end method

.method public setIncognito(Z)V
    .locals 0

    .prologue
    .line 230
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mIsIncognito:Z

    .line 231
    return-void
.end method

.method public setOpacity(F)V
    .locals 0

    .prologue
    .line 188
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mOpacity:F

    .line 189
    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    .prologue
    .line 202
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mIsPressed:Z

    .line 203
    return-void
.end method

.method public bridge synthetic setProperty(Ljava/lang/Enum;F)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setProperty(Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;F)V

    return-void
.end method

.method public setProperty(Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;F)V
    .locals 2

    .prologue
    .line 339
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$1;->$SwitchMap$org$chromium$chrome$browser$compositor$layouts$components$CompositorButton$Property:[I

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton$Property;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 346
    :goto_0
    return-void

    .line 341
    :pswitch_0
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->setOpacity(F)V

    goto :goto_0

    .line 339
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setResources(IIII)V
    .locals 0

    .prologue
    .line 86
    iput p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mResource:I

    .line 87
    iput p2, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mPressedResource:I

    .line 88
    iput p3, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mIncognitoResource:I

    .line 89
    iput p4, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mIncognitoPressedResource:I

    .line 90
    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .prologue
    .line 216
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mIsVisible:Z

    .line 217
    return-void
.end method

.method public setWidth(F)V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 154
    return-void
.end method

.method public setX(F)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 124
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mBounds:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->left:F

    .line 125
    return-void
.end method

.method public setY(F)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 139
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/layouts/components/CompositorButton;->mBounds:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->top:F

    .line 140
    return-void
.end method
