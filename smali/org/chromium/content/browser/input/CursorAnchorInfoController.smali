.class final Lorg/chromium/content/browser/input/CursorAnchorInfoController;
.super Ljava/lang/Object;
.source "CursorAnchorInfoController.java"


# instance fields
.field private final mComposingTextDelegate:Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCompositionCharacterBounds:[F
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private mHasCoordinateInfo:Z

.field private mHasInsertionMarker:Z

.field private mHasPendingImmediateRequest:Z

.field private mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mInsertionMarkerBottom:F

.field private mInsertionMarkerHorizontal:F

.field private mInsertionMarkerTop:F

.field private mIsEditable:Z

.field private mIsInsertionMarkerVisible:Z

.field private mLastCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mMatrix:Landroid/graphics/Matrix;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private mMonitorModeEnabled:Z

.field private mScale:F

.field private mTranslationX:F

.field private mTranslationY:F

.field private final mViewDelegate:Lorg/chromium/content/browser/input/CursorAnchorInfoController$ViewDelegate;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final mViewOrigin:[I
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;Lorg/chromium/content/browser/input/CursorAnchorInfoController$ViewDelegate;)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mMatrix:Landroid/graphics/Matrix;

    .line 73
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mViewOrigin:[I

    .line 75
    new-instance v0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 88
    iput-object p1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    .line 89
    iput-object p2, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mComposingTextDelegate:Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;

    .line 90
    iput-object p3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mViewDelegate:Lorg/chromium/content/browser/input/CursorAnchorInfoController$ViewDelegate;

    .line 91
    return-void
.end method

.method public static create(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;)Lorg/chromium/content/browser/input/CursorAnchorInfoController;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    new-instance v1, Lorg/chromium/content/browser/input/CursorAnchorInfoController$1;

    invoke-direct {v1}, Lorg/chromium/content/browser/input/CursorAnchorInfoController$1;-><init>()V

    invoke-direct {v0, p0, p1, v1}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;-><init>(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;Lorg/chromium/content/browser/input/CursorAnchorInfoController$ViewDelegate;)V

    return-object v0
.end method

.method public static createForTest(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;Lorg/chromium/content/browser/input/CursorAnchorInfoController$ViewDelegate;)Lorg/chromium/content/browser/input/CursorAnchorInfoController;
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;-><init>(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;Lorg/chromium/content/browser/input/CursorAnchorInfoController$ViewDelegate;)V

    return-object v0
.end method

.method private updateCursorAnchorInfo(Landroid/view/View;)V
    .locals 14

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 231
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mHasCoordinateInfo:Z

    if-nez v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mLastCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    if-nez v0, :cond_3

    .line 235
    iget-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-virtual {v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    .line 237
    iget-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mComposingTextDelegate:Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mComposingTextDelegate:Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;

    invoke-interface {v1}, Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;->getSelectionStart()I

    move-result v9

    .line 239
    iget-object v1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mComposingTextDelegate:Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;

    invoke-interface {v1}, Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;->getSelectionEnd()I

    move-result v10

    .line 240
    iget-object v1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mComposingTextDelegate:Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;

    invoke-interface {v1}, Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;->getComposingTextStart()I

    move-result v11

    .line 241
    iget-object v1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mComposingTextDelegate:Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;

    invoke-interface {v1}, Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;->getComposingTextEnd()I

    move-result v1

    .line 242
    if-eqz v0, :cond_1

    if-ltz v11, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 243
    iget-object v2, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-interface {v0, v11, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v11, v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 245
    iget-object v12, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCompositionCharacterBounds:[F

    .line 246
    if-eqz v12, :cond_1

    .line 247
    array-length v0, v12

    div-int/lit8 v13, v0, 0x4

    move v7, v8

    .line 248
    :goto_1
    if-ge v7, v13, :cond_1

    .line 249
    shl-int/lit8 v0, v7, 0x2

    aget v2, v12, v0

    .line 250
    shl-int/lit8 v0, v7, 0x2

    add-int/lit8 v0, v0, 0x1

    aget v3, v12, v0

    .line 251
    shl-int/lit8 v0, v7, 0x2

    add-int/lit8 v0, v0, 0x2

    aget v4, v12, v0

    .line 252
    shl-int/lit8 v0, v7, 0x2

    add-int/lit8 v0, v0, 0x3

    aget v5, v12, v0

    .line 253
    add-int v1, v11, v7

    .line 254
    iget-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-virtual/range {v0 .. v6}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->addCharacterBounds(IFFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 248
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 259
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-virtual {v0, v9, v10}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 260
    iget-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mScale:F

    iget v2, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mScale:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 261
    iget-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mTranslationX:F

    iget v2, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mTranslationY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 262
    iget-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget-object v1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 263
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mHasInsertionMarker:Z

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    iget v1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInsertionMarkerHorizontal:F

    iget v2, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInsertionMarkerTop:F

    iget v3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInsertionMarkerBottom:F

    iget v4, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInsertionMarkerBottom:F

    iget-boolean v5, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mIsInsertionMarkerVisible:Z

    if-eqz v5, :cond_5

    move v5, v6

    :goto_2
    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 272
    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCursorAnchorInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-virtual {v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mLastCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    .line 275
    :cond_3
    iget-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    if-eqz v0, :cond_4

    .line 276
    iget-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    iget-object v1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mLastCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    invoke-virtual {v0, p1, v1}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    .line 278
    :cond_4
    iput-boolean v8, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mHasPendingImmediateRequest:Z

    goto/16 :goto_0

    .line 264
    :cond_5
    const/4 v5, 0x2

    goto :goto_2
.end method


# virtual methods
.method public final focusedNodeChanged(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 210
    iput-boolean p1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mIsEditable:Z

    .line 211
    iput-object v1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCompositionCharacterBounds:[F

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mHasCoordinateInfo:Z

    .line 213
    iput-object v1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mLastCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    .line 214
    return-void
.end method

.method public final invalidateLastCursorAnchorInfo()V
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mIsEditable:Z

    if-nez v0, :cond_0

    .line 127
    :goto_0
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mLastCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    goto :goto_0
.end method

.method public final onRequestCursorUpdates(ILandroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 217
    iget-boolean v2, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mIsEditable:Z

    if-nez v2, :cond_0

    .line 224
    :goto_0
    return v0

    .line 219
    :cond_0
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mMonitorModeEnabled:Z

    .line 220
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2

    .line 221
    iput-boolean v1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mHasPendingImmediateRequest:Z

    .line 222
    invoke-direct {p0, p2}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->updateCursorAnchorInfo(Landroid/view/View;)V

    :cond_2
    move v0, v1

    .line 224
    goto :goto_0
.end method

.method public final onUpdateFrameInfo(Lorg/chromium/content/browser/RenderCoordinates;ZZFFFLandroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 156
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mIsEditable:Z

    if-nez v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mViewDelegate:Lorg/chromium/content/browser/input/CursorAnchorInfoController$ViewDelegate;

    iget-object v1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mViewOrigin:[I

    invoke-interface {v0, p7, v1}, Lorg/chromium/content/browser/input/CursorAnchorInfoController$ViewDelegate;->getLocationOnScreen(Landroid/view/View;[I)V

    .line 168
    invoke-virtual {p1}, Lorg/chromium/content/browser/RenderCoordinates;->getDeviceScaleFactor()F

    move-result v0

    .line 169
    iget-object v1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mViewOrigin:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    .line 170
    iget-object v2, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mViewOrigin:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {p1}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v3

    add-float/2addr v2, v3

    .line 172
    iget-boolean v3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mHasCoordinateInfo:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mScale:F

    cmpl-float v3, v0, v3

    if-nez v3, :cond_2

    iget v3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mTranslationX:F

    cmpl-float v3, v1, v3

    if-nez v3, :cond_2

    iget v3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mTranslationY:F

    cmpl-float v3, v2, v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mHasInsertionMarker:Z

    if-ne p2, v3, :cond_2

    iget-boolean v3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mIsInsertionMarkerVisible:Z

    if-ne p3, v3, :cond_2

    iget v3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInsertionMarkerHorizontal:F

    cmpl-float v3, p4, v3

    if-nez v3, :cond_2

    iget v3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInsertionMarkerTop:F

    cmpl-float v3, p5, v3

    if-nez v3, :cond_2

    iget v3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInsertionMarkerBottom:F

    cmpl-float v3, p6, v3

    if-eqz v3, :cond_3

    .line 181
    :cond_2
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mLastCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    .line 182
    iput-boolean v4, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mHasCoordinateInfo:Z

    .line 183
    iput v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mScale:F

    .line 184
    iput v1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mTranslationX:F

    .line 185
    iput v2, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mTranslationY:F

    .line 186
    iput-boolean p2, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mHasInsertionMarker:Z

    .line 187
    iput-boolean p3, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mIsInsertionMarkerVisible:Z

    .line 188
    iput p4, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInsertionMarkerHorizontal:F

    .line 189
    iput p5, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInsertionMarkerTop:F

    .line 190
    iput p6, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInsertionMarkerBottom:F

    .line 195
    :cond_3
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mHasPendingImmediateRequest:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mMonitorModeEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mLastCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    if-nez v0, :cond_0

    .line 197
    :cond_4
    invoke-direct {p0, p7}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->updateCursorAnchorInfo(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final resetMonitoringState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mMonitorModeEnabled:Z

    .line 206
    iput-boolean v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mHasPendingImmediateRequest:Z

    .line 207
    return-void
.end method

.method public final setCompositionCharacterBounds([F)V
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mIsEditable:Z

    if-nez v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCompositionCharacterBounds:[F

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mLastCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    .line 138
    iput-object p1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mCompositionCharacterBounds:[F

    goto :goto_0
.end method

.method public final setInputMethodManagerWrapperForTest(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    .line 109
    return-void
.end method
