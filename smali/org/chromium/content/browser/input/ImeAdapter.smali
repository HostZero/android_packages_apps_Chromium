.class public Lorg/chromium/content/browser/input/ImeAdapter;
.super Ljava/lang/Object;
.source "ImeAdapter.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static sSingleCharArray:[C


# instance fields
.field private mCurrentConfig:Landroid/content/res/Configuration;

.field private final mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

.field private mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

.field private mInputConnectionFactory:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;

.field private mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

.field private mLastCompositionEnd:I

.field private mLastCompositionStart:I

.field private mLastSelectionEnd:I

.field private mLastSelectionStart:I

.field private mLastText:Ljava/lang/String;

.field private mNativeImeAdapterAndroid:J

.field private mTextInputFlags:I

.field private mTextInputType:I

.field private final mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    new-array v0, v0, [C

    sput-object v0, Lorg/chromium/content/browser/input/ImeAdapter;->sSingleCharArray:[C

    return-void
.end method

.method public constructor <init>(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;)V
    .locals 2

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    .line 123
    iput-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    .line 124
    iput-object p2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    .line 125
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->resetInputConnectionFactory()V

    .line 127
    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v1}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->getAttachedView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 131
    new-instance v0, Lorg/chromium/content/browser/input/ImeAdapter$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/ImeAdapter$1;-><init>(Lorg/chromium/content/browser/input/ImeAdapter;)V

    invoke-static {p1, v0}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->create(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;Lorg/chromium/content/browser/input/CursorAnchorInfoController$ComposingTextDelegate;)Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/input/ImeAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/input/ImeAdapter;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastSelectionStart:I

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/input/ImeAdapter;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastSelectionEnd:I

    return v0
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/input/ImeAdapter;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastCompositionStart:I

    return v0
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/input/ImeAdapter;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastCompositionEnd:I

    return v0
.end method

.method private cancelComposition()V
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->restartInput()V

    .line 683
    :cond_0
    return-void
.end method

.method private detach()V
    .locals 2

    .prologue
    .line 694
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    .line 695
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->focusedNodeChanged(Z)V

    .line 698
    :cond_0
    return-void
.end method

.method private focusedNodeChanged(Z)V
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->focusedNodeChanged(Z)V

    .line 612
    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 613
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->restartInput()V

    .line 615
    :cond_1
    return-void
.end method

.method private static getModifiers(I)I
    .locals 2

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 236
    const/4 v0, 0x1

    .line 238
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 239
    or-int/lit8 v0, v0, 0x4

    .line 241
    :cond_1
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_2

    .line 242
    or-int/lit8 v0, v0, 0x2

    .line 244
    :cond_2
    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-eqz v1, :cond_3

    .line 245
    or-int/lit16 v0, v0, 0x200

    .line 247
    :cond_3
    const/high16 v1, 0x200000

    and-int/2addr v1, p0

    if-eqz v1, :cond_4

    .line 248
    or-int/lit16 v0, v0, 0x400

    .line 250
    :cond_4
    return v0
.end method

.method private hideKeyboard()V
    .locals 4

    .prologue
    .line 351
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->getAttachedView()Landroid/view/View;

    move-result-object v0

    .line 352
    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    .line 358
    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    if-eqz v0, :cond_1

    .line 359
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->restartInput()V

    .line 361
    :cond_1
    return-void
.end method

.method private isImeThreadEnabled()Z
    .locals 4

    .prologue
    .line 160
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 161
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeIsImeThreadEnabled(J)Z

    move-result v0

    goto :goto_0
.end method

.method private static isTextInputType(I)Z
    .locals 1

    .prologue
    .line 413
    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/chromium/ui/picker/InputDialogContainer;->isDialogInputType(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeAppendBackgroundColorSpan(JIII)V
.end method

.method private static native nativeAppendUnderlineSpan(JII)V
.end method

.method private native nativeAttachImeAdapter(J)V
.end method

.method private native nativeCommitText(JLjava/lang/String;)V
.end method

.method private native nativeDeleteSurroundingText(JII)V
.end method

.method private native nativeFinishComposingText(J)V
.end method

.method private native nativeIsImeThreadEnabled(J)Z
.end method

.method private native nativeRequestTextInputStateUpdate(J)Z
.end method

.method private native nativeResetImeAdapter(J)V
.end method

.method private native nativeSendKeyEvent(JLandroid/view/KeyEvent;IIJIIZI)Z
.end method

.method private native nativeSendSyntheticKeyEvent(JIJIII)Z
.end method

.method private native nativeSetComposingRegion(JII)V
.end method

.method private native nativeSetComposingText(JLjava/lang/CharSequence;Ljava/lang/String;I)V
.end method

.method private native nativeSetEditableSelectionOffsets(JII)V
.end method

.method private populateUnderlinesFromSpans(Ljava/lang/CharSequence;J)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 662
    instance-of v0, p1, Landroid/text/SpannableString;

    if-nez v0, :cond_1

    .line 677
    :cond_0
    return-void

    :cond_1
    move-object v0, p1

    .line 664
    check-cast v0, Landroid/text/SpannableString;

    .line 665
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v3, Landroid/text/style/CharacterStyle;

    invoke-virtual {v0, v2, v1, v3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/CharacterStyle;

    .line 667
    array-length v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v1, v3

    .line 668
    instance-of v5, v2, Landroid/text/style/BackgroundColorSpan;

    if-eqz v5, :cond_3

    .line 669
    invoke-virtual {v0, v2}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v0, v2}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    check-cast v2, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v2}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v2

    invoke-static {p2, p3, v5, v6, v2}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeAppendBackgroundColorSpan(JIII)V

    .line 667
    :cond_2
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 672
    :cond_3
    instance-of v5, v2, Landroid/text/style/UnderlineSpan;

    if-eqz v5, :cond_2

    .line 673
    invoke-virtual {v0, v2}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v0, v2}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    invoke-static {p2, p3, v5, v2}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeAppendUnderlineSpan(JII)V

    goto :goto_1
.end method

.method private resetInputConnectionFactory()V
    .locals 2

    .prologue
    .line 165
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->isImeThreadEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    invoke-direct {v0, v1}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;-><init>(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnectionFactory:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    new-instance v0, Lorg/chromium/content/browser/input/ReplicaInputConnection$Factory;

    invoke-direct {v0}, Lorg/chromium/content/browser/input/ReplicaInputConnection$Factory;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnectionFactory:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;

    goto :goto_0
.end method

.method private setCharacterBounds([F)V
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    if-nez v0, :cond_0

    .line 689
    :goto_0
    return-void

    .line 688
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->setCompositionCharacterBounds([F)V

    goto :goto_0
.end method

.method private showSoftKeyboard()V
    .locals 4

    .prologue
    .line 338
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v1}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->getAttachedView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v3}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->getNewShowKeyboardReceiver()Landroid/os/ResultReceiver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)V

    .line 340
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->getAttachedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 342
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->onKeyboardBoundsUnchanged()V

    .line 344
    :cond_0
    return-void
.end method


# virtual methods
.method public attach(J)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 323
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 331
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 325
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeResetImeAdapter(J)V

    .line 327
    :cond_1
    cmp-long v0, p1, v2

    if-eqz v0, :cond_2

    .line 328
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeAttachImeAdapter(J)V

    .line 330
    :cond_2
    iput-wide p1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    goto :goto_0
.end method

.method deleteSurroundingText(II)Z
    .locals 9

    .prologue
    const/16 v6, 0xe5

    const/4 v7, 0x0

    .line 569
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->onImeEvent()V

    .line 570
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 576
    :goto_0
    return v7

    .line 571
    :cond_0
    iget-wide v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const/4 v3, 0x7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSendSyntheticKeyEvent(JIJIII)Z

    .line 573
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeDeleteSurroundingText(JII)V

    .line 574
    iget-wide v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const/16 v3, 0x9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSendSyntheticKeyEvent(JIJIII)Z

    .line 576
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;->sendKeyEventOnUiThread(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 427
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method finishComposingText()Z
    .locals 4

    .prologue
    .line 532
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 534
    :goto_0
    return v0

    .line 533
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeFinishComposingText(J)V

    .line 534
    const/4 v0, 0x1

    goto :goto_0
.end method

.method getInputConnectionFactoryForTest()Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnectionFactory:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;

    return-object v0
.end method

.method public getInputConnectionForTest()Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    return-object v0
.end method

.method public hasTextInputType()Z
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    invoke-static {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->isTextInputType(I)Z

    move-result v0

    return v0
.end method

.method public moveCursorToSelectionEnd()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;->moveCursorToSelectionEndOnUiThread()V

    .line 405
    :cond_0
    return-void
.end method

.method notifyUserAction()V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->notifyUserAction()V

    .line 488
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 179
    const/high16 v1, 0x12000000

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 183
    iget v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    if-nez v1, :cond_1

    .line 187
    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    invoke-interface {v1}, Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;->unblockOnUiThread()V

    .line 188
    :cond_0
    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    .line 199
    :goto_0
    return-object v0

    .line 192
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnectionFactory:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v1}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->getAttachedView()Landroid/view/View;

    move-result-object v1

    iget v3, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    iget v4, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputFlags:I

    iget v5, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastSelectionStart:I

    iget v6, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastSelectionEnd:I

    move-object v2, p0

    move-object v7, p1

    invoke-interface/range {v0 .. v7}, Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;->initializeAndGet(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapter;IIIILandroid/view/inputmethod/EditorInfo;)Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    .line 196
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->resetMonitoringState()V

    .line 199
    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    goto :goto_0
.end method

.method public onKeyboardConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCurrentConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCurrentConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCurrentConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v1, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCurrentConfig:Landroid/content/res/Configuration;

    .line 379
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->restartInput()V

    .line 384
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->showSoftKeyboard()V

    goto :goto_0
.end method

.method public onRequestCursorUpdates(I)Z
    .locals 2

    .prologue
    .line 631
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 632
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v1}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->getAttachedView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->onRequestCursorUpdates(ILandroid/view/View;)Z

    move-result v0

    goto :goto_0
.end method

.method public onUpdateFrameInfo(Lorg/chromium/content/browser/RenderCoordinates;ZZFFF)V
    .locals 8

    .prologue
    .line 651
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    if-nez v0, :cond_0

    .line 655
    :goto_0
    return-void

    .line 652
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v1}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->getAttachedView()Landroid/view/View;

    move-result-object v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->onUpdateFrameInfo(Lorg/chromium/content/browser/RenderCoordinates;ZZFFFLandroid/view/View;)V

    goto :goto_0
.end method

.method public onViewFocusChanged(Z)V
    .locals 0

    .prologue
    .line 394
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->reset()V

    .line 395
    :cond_0
    return-void
.end method

.method performContextMenuAction(I)Z
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->performContextMenuAction(I)Z

    move-result v0

    return v0
.end method

.method performEditorAction(I)Z
    .locals 5

    .prologue
    const/16 v4, 0x16

    .line 473
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 483
    :goto_0
    return v0

    .line 474
    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 475
    const/16 v0, 0x3d

    invoke-virtual {p0, v0, v4}, Lorg/chromium/content/browser/input/ImeAdapter;->sendSyntheticKeyPress(II)V

    .line 483
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 479
    :cond_1
    const/16 v0, 0x42

    invoke-virtual {p0, v0, v4}, Lorg/chromium/content/browser/input/ImeAdapter;->sendSyntheticKeyPress(II)V

    goto :goto_1
.end method

.method requestTextInputStateUpdate()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 621
    iget-wide v2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 624
    :cond_0
    :goto_0
    return v0

    .line 623
    :cond_1
    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    if-eqz v1, :cond_0

    .line 624
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeRequestTextInputStateUpdate(J)Z

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 435
    iput v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    .line 436
    iput v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputFlags:I

    .line 438
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->hideKeyboard()V

    .line 439
    return-void
.end method

.method restartInput()V
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v1}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->getAttachedView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->restartInput(Landroid/view/View;)V

    .line 461
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;->onRestartInputOnUiThread()V

    .line 462
    :cond_0
    return-void
.end method

.method sendCompositionToNative(Ljava/lang/CharSequence;IZ)Z
    .locals 13

    .prologue
    .line 504
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 527
    :goto_0
    return v0

    .line 507
    :cond_0
    const-string/jumbo v0, "\n"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    const/16 v0, 0x42

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->sendSyntheticKeyPress(II)V

    .line 510
    const/4 v0, 0x1

    goto :goto_0

    .line 513
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->onImeEvent()V

    .line 514
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 515
    iget-wide v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const/4 v3, 0x7

    const/16 v6, 0xe5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSendSyntheticKeyEvent(JIJIII)Z

    .line 518
    if-eqz p3, :cond_2

    .line 519
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeCommitText(JLjava/lang/String;)V

    .line 525
    :goto_1
    iget-wide v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const/16 v3, 0x9

    const/16 v6, 0xe5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSendSyntheticKeyEvent(JIJIII)Z

    .line 527
    const/4 v0, 0x1

    goto :goto_0

    .line 521
    :cond_2
    iget-wide v8, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v7, p0

    move-object v10, p1

    move v12, p2

    invoke-direct/range {v7 .. v12}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSetComposingText(JLjava/lang/CharSequence;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 538
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 555
    :cond_0
    :goto_0
    return v10

    .line 540
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 541
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 554
    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->onImeEvent()V

    .line 555
    iget-wide v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-static {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->getModifiers(I)I

    move-result v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v11

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v11}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSendKeyEvent(JLandroid/view/KeyEvent;IIJIIZI)Z

    move-result v10

    goto :goto_0
.end method

.method protected sendSyntheticKeyPress(II)V
    .locals 19

    .prologue
    .line 492
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 493
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-wide v6, v4

    move/from16 v9, p1

    move/from16 v14, p2

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/chromium/content/browser/input/ImeAdapter;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 497
    new-instance v7, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    move-wide v10, v4

    move/from16 v13, p1

    move/from16 v18, p2

    invoke-direct/range {v7 .. v18}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/chromium/content/browser/input/ImeAdapter;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 501
    return-void
.end method

.method setComposingRegion(II)Z
    .locals 4

    .prologue
    .line 598
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 600
    :goto_0
    return v0

    .line 599
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSetComposingRegion(JII)V

    .line 600
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setEditableSelectionOffsets(II)Z
    .locals 4

    .prologue
    .line 586
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 588
    :goto_0
    return v0

    .line 587
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSetEditableSelectionOffsets(JII)V

    .line 588
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setInputConnectionFactory(Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnectionFactory:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;

    .line 218
    return-void
.end method

.method public setInputMethodManagerWrapperForTest(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;)V
    .locals 1

    .prologue
    .line 209
    iput-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    .line 210
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->setInputMethodManagerWrapperForTest(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;)V

    .line 213
    :cond_0
    return-void
.end method

.method setInputTypeForTest(I)V
    .locals 0

    .prologue
    .line 409
    iput p1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    .line 410
    return-void
.end method

.method public updateKeyboardVisibility(IIZ)V
    .locals 1

    .prologue
    .line 265
    iput p2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputFlags:I

    .line 266
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    if-eq v0, p1, :cond_0

    .line 267
    iput p1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    .line 269
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->restartInput()V

    .line 274
    :cond_0
    if-eqz p1, :cond_2

    .line 275
    if-eqz p3, :cond_1

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->showSoftKeyboard()V

    .line 279
    :cond_1
    :goto_0
    return-void

    .line 277
    :cond_2
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->hideKeyboard()V

    goto :goto_0
.end method

.method updateSelection(IIII)V
    .locals 6

    .prologue
    .line 451
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v1}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->getAttachedView()Landroid/view/View;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->updateSelection(Landroid/view/View;IIII)V

    .line 453
    return-void
.end method

.method public updateState(Ljava/lang/String;IIIIZ)V
    .locals 8

    .prologue
    .line 298
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastText:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastSelectionStart:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastSelectionEnd:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastCompositionStart:I

    if-ne v0, p4, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastCompositionEnd:I

    if-eq v0, p5, :cond_1

    .line 302
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mCursorAnchorInfoController:Lorg/chromium/content/browser/input/CursorAnchorInfoController;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/CursorAnchorInfoController;->invalidateLastCursorAnchorInfo()V

    .line 304
    :cond_1
    iput-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastText:Ljava/lang/String;

    .line 305
    iput p2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastSelectionStart:I

    .line 306
    iput p3, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastSelectionEnd:I

    .line 307
    iput p4, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastCompositionStart:I

    .line 308
    iput p5, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastCompositionEnd:I

    .line 310
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    if-nez v0, :cond_2

    .line 315
    :goto_0
    return-void

    .line 311
    :cond_2
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_3

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_3

    const/4 v6, 0x1

    .line 313
    :goto_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;->updateStateOnUiThread(Ljava/lang/String;IIIIZZ)V

    goto :goto_0

    .line 311
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method
