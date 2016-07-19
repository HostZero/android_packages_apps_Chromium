.class public Lorg/chromium/content/browser/input/ReplicaInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "ReplicaInputConnection.java"

# interfaces
.implements Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;


# static fields
.field public static final INVALID_COMPOSITION:I = -0x1

.field public static final INVALID_SELECTION:I = -0x1


# instance fields
.field private final mEditable:Landroid/text/Editable;

.field private final mHandler:Landroid/os/Handler;

.field private final mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

.field private mNumNestedBatchEdits:I

.field private mPendingAccent:I

.field private mSingleLine:Z


# direct methods
.method constructor <init>(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapter;Landroid/os/Handler;Landroid/text/Editable;IILandroid/view/inputmethod/EditorInfo;)V
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mNumNestedBatchEdits:I

    .line 90
    iput-object p2, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    .line 91
    iput-object p4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    .line 92
    iput-object p3, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mHandler:Landroid/os/Handler;

    .line 94
    invoke-static {p4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 95
    invoke-static {p4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 96
    invoke-static {p5, p6, v0, v1, p7}, Lorg/chromium/content/browser/input/ImeUtils;->computeEditorInfo(IIIILandroid/view/inputmethod/EditorInfo;)V

    .line 102
    return-void
.end method

.method private deleteSurroundingTextImpl(IIZ)Z
    .locals 5

    .prologue
    .line 277
    iget v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mPendingAccent:I

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->finishComposingText()Z

    .line 281
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 282
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 284
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    sub-int v1, v0, v3

    .line 285
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 286
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 290
    iget-object v4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    sub-int/2addr v2, v0

    invoke-static {v4, v2}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->isIndexBetweenUtf16SurrogatePair(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    add-int/lit8 v0, v0, 0x1

    .line 293
    :cond_1
    iget-object v2, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    add-int/2addr v3, v1

    invoke-static {v2, v3}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->isIndexBetweenUtf16SurrogatePair(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 294
    add-int/lit8 v1, v1, 0x1

    .line 297
    :cond_2
    invoke-super {p0, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    .line 298
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->updateSelectionIfRequired()V

    .line 302
    if-eqz p3, :cond_3

    .line 303
    const/4 v0, 0x1

    .line 306
    :goto_0
    return v0

    :cond_3
    iget-object v2, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v2, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->deleteSurroundingText(II)Z

    move-result v0

    goto :goto_0
.end method

.method static isIndexBetweenUtf16SurrogatePair(Ljava/lang/CharSequence;I)Z
    .locals 1

    .prologue
    .line 266
    if-lez p1, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private replaceSelectionWithUnicodeChar(I)V
    .locals 5

    .prologue
    .line 382
    if-nez p1, :cond_0

    .line 392
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 384
    iget-object v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 385
    if-le v0, v1, :cond_1

    .line 390
    :goto_1
    iget-object v2, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    int-to-char v3, p1

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v0, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 391
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->updateSelectionIfRequired()V

    goto :goto_0

    :cond_1
    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_1
.end method

.method private updateSelectionIfRequired()V
    .locals 5

    .prologue
    .line 156
    iget v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mNumNestedBatchEdits:I

    if-eqz v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 158
    iget-object v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 159
    iget-object v2, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v2}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 160
    iget-object v3, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v3}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    .line 167
    iget-object v4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/chromium/content/browser/input/ImeAdapter;->updateSelection(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mNumNestedBatchEdits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mNumNestedBatchEdits:I

    .line 235
    const/4 v0, 0x1

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 188
    iput v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mPendingAccent:I

    .line 189
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 190
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->updateSelectionIfRequired()V

    .line 191
    iget-object v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, p1, p2, v0}, Lorg/chromium/content/browser/input/ImeAdapter;->sendCompositionToNative(Ljava/lang/CharSequence;IZ)Z

    move-result v0

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->deleteSurroundingTextImpl(IIZ)Z

    move-result v0

    return v0
.end method

.method public endBatchEdit()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 243
    iget v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mNumNestedBatchEdits:I

    if-nez v1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return v0

    .line 244
    :cond_1
    iget v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mNumNestedBatchEdits:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mNumNestedBatchEdits:I

    .line 246
    iget v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mNumNestedBatchEdits:I

    if-nez v1, :cond_2

    invoke-direct {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->updateSelectionIfRequired()V

    .line 247
    :cond_2
    iget v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mNumNestedBatchEdits:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public finishComposingText()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 400
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mPendingAccent:I

    .line 402
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 410
    :goto_0
    return v2

    .line 406
    :cond_0
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    .line 407
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->updateSelectionIfRequired()V

    .line 408
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->finishComposingText()Z

    goto :goto_0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 2

    .prologue
    .line 219
    new-instance v1, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 220
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 221
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iput v0, v1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 222
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    iput v0, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 223
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    iput v0, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 224
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mSingleLine:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 225
    return-object v1

    .line 224
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getImeStateForTesting()Lorg/chromium/content/browser/input/ReplicaInputConnection$ImeState;
    .locals 6

    .prologue
    .line 500
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 501
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 502
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 503
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 504
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 505
    new-instance v0, Lorg/chromium/content/browser/input/ReplicaInputConnection$ImeState;

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/input/ReplicaInputConnection$ImeState;-><init>(Ljava/lang/String;IIII)V

    return-object v0
.end method

.method public moveCursorToSelectionEndOnUiThread()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 460
    invoke-virtual {p0, v0, v0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->setSelection(II)Z

    .line 461
    return-void
.end method

.method public onRestartInputOnUiThread()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 452
    iput v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mNumNestedBatchEdits:I

    .line 453
    iput v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mPendingAccent:I

    .line 454
    return-void
.end method

.method public performContextMenuAction(I)Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->performContextMenuAction(I)Z

    move-result v0

    return v0
.end method

.method public performEditorAction(I)Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->performEditorAction(I)Z

    move-result v0

    return v0
.end method

.method public requestCursorUpdates(I)Z
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->onRequestCursorUpdates(I)Z

    move-result v0

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 327
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 328
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 329
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    .line 334
    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 373
    :goto_0
    return v3

    .line 343
    :cond_0
    const/16 v0, 0x43

    if-ne v1, v0, :cond_2

    .line 344
    invoke-direct {p0, v3, v4, v3}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->deleteSurroundingTextImpl(IIZ)Z

    .line 371
    :cond_1
    :goto_1
    invoke-direct {p0, v2}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->replaceSelectionWithUnicodeChar(I)V

    .line 372
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0

    .line 345
    :cond_2
    const/16 v0, 0x70

    if-ne v1, v0, :cond_3

    .line 346
    invoke-direct {p0, v4, v3, v3}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->deleteSurroundingTextImpl(IIZ)Z

    goto :goto_1

    .line 347
    :cond_3
    const/16 v0, 0x42

    if-ne v1, v0, :cond_4

    .line 350
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->finishComposingText()Z

    goto :goto_1

    .line 351
    :cond_4
    const/high16 v0, -0x80000000

    and-int/2addr v0, v2

    if-eqz v0, :cond_5

    .line 353
    const v0, 0x7fffffff

    and-int/2addr v0, v2

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 357
    iput v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mPendingAccent:I

    goto :goto_0

    .line 359
    :cond_5
    iget v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mPendingAccent:I

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 360
    iget v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mPendingAccent:I

    invoke-static {v0, v2}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v0

    .line 361
    if-eqz v0, :cond_6

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0

    .line 369
    :cond_6
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->finishComposingText()Z

    goto :goto_1
.end method

.method public sendKeyEventOnUiThread(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 314
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setComposingRegion(II)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 432
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 433
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 434
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 435
    if-gez v2, :cond_0

    move v2, v1

    .line 436
    :cond_0
    if-gez v3, :cond_4

    .line 437
    :goto_0
    if-le v2, v0, :cond_1

    move v2, v0

    .line 438
    :cond_1
    if-le v1, v0, :cond_3

    .line 440
    :goto_1
    if-ne v2, v0, :cond_2

    .line 441
    iget-object v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 445
    :goto_2
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->updateSelectionIfRequired()V

    .line 446
    iget-object v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v1, v2, v0}, Lorg/chromium/content/browser/input/ImeAdapter;->setComposingRegion(II)Z

    move-result v0

    return v0

    .line 443
    :cond_2
    invoke-super {p0, v2, v0}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 176
    iput v1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mPendingAccent:I

    .line 177
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 178
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->updateSelectionIfRequired()V

    .line 179
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0, p1, p2, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->sendCompositionToNative(Ljava/lang/CharSequence;IZ)Z

    move-result v0

    return v0
.end method

.method public setSelection(II)Z
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 420
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-gt p1, v0, :cond_0

    if-le p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 423
    :goto_0
    return v0

    .line 421
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setSelection(II)Z

    .line 422
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->updateSelectionIfRequired()V

    .line 423
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->setEditableSelectionOffsets(II)Z

    move-result v0

    goto :goto_0
.end method

.method public unblockOnUiThread()V
    .locals 0

    .prologue
    .line 464
    return-void
.end method

.method public updateStateOnUiThread(Ljava/lang/String;IIIIZZ)V
    .locals 8

    .prologue
    .line 111
    iput-boolean p6, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mSingleLine:Z

    .line 115
    if-nez p7, :cond_0

    .line 140
    :goto_0
    return-void

    .line 118
    :cond_0
    const/16 v0, 0xa0

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 121
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 122
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {p5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 125
    iget-object v5, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 126
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 128
    if-nez v5, :cond_1

    .line 129
    iget-object v5, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-interface {v5, v6, v7, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 132
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 134
    if-ne v3, v4, :cond_2

    .line 135
    iget-object v0, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 139
    :goto_1
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ReplicaInputConnection;->updateSelectionIfRequired()V

    goto :goto_0

    .line 137
    :cond_2
    invoke-super {p0, v3, v4}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z

    goto :goto_1
.end method
