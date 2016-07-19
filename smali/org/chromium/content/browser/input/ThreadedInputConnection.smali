.class public Lorg/chromium/content/browser/input/ThreadedInputConnection;
.super Ljava/lang/Object;
.source "ThreadedInputConnection.java"

# interfaces
.implements Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;


# static fields
.field private static final UNBLOCKER:Lorg/chromium/content/browser/input/TextInputState;


# instance fields
.field private final mFinishComposingTextRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private final mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

.field private final mMoveCursorSelectionEndRunnable:Ljava/lang/Runnable;

.field private final mNotifyUserActionRunnable:Ljava/lang/Runnable;

.field private mNumNestedBatchEdits:I

.field private mPendingAccent:I

.field private final mProcessPendingInputStatesRunnable:Ljava/lang/Runnable;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;

.field private final mRequestTextInputStateUpdate:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 36
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$1;

    const-string/jumbo v1, ""

    new-instance v2, Lorg/chromium/content/browser/input/Range;

    invoke-direct {v2, v4, v4}, Lorg/chromium/content/browser/input/Range;-><init>(II)V

    new-instance v3, Lorg/chromium/content/browser/input/Range;

    invoke-direct {v3, v5, v5}, Lorg/chromium/content/browser/input/Range;-><init>(II)V

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/input/ThreadedInputConnection$1;-><init>(Ljava/lang/CharSequence;Lorg/chromium/content/browser/input/Range;Lorg/chromium/content/browser/input/Range;ZZ)V

    sput-object v0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->UNBLOCKER:Lorg/chromium/content/browser/input/TextInputState;

    return-void
.end method

.method constructor <init>(Lorg/chromium/content/browser/input/ImeAdapter;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$2;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection$2;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mProcessPendingInputStatesRunnable:Ljava/lang/Runnable;

    .line 52
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$3;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection$3;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mMoveCursorSelectionEndRunnable:Ljava/lang/Runnable;

    .line 62
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$4;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection$4;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mRequestTextInputStateUpdate:Ljava/lang/Runnable;

    .line 70
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$5;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection$5;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNotifyUserActionRunnable:Ljava/lang/Runnable;

    .line 77
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$6;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection$6;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mFinishComposingTextRunnable:Ljava/lang/Runnable;

    .line 90
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 95
    invoke-static {}, Lorg/chromium/content/browser/input/ImeUtils;->checkOnUiThread()V

    .line 96
    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    .line 97
    iput-object p2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mHandler:Landroid/os/Handler;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/input/ThreadedInputConnection;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->processPendingInputStates()V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/input/ThreadedInputConnection;)Lorg/chromium/content/browser/input/TextInputState;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->requestAndWaitForTextInputState()Lorg/chromium/content/browser/input/TextInputState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/input/ThreadedInputConnection;)Lorg/chromium/content/browser/input/ImeAdapter;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    return-object v0
.end method

.method private addToQueueOnUiThread(Lorg/chromium/content/browser/input/TextInputState;)V
    .locals 5

    .prologue
    .line 212
    invoke-static {}, Lorg/chromium/content/browser/input/ImeUtils;->checkOnUiThread()V

    .line 214
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    const-string/jumbo v1, "cr_Ime"

    const-string/jumbo v2, "addToQueueOnUiThread interrupted"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private assertOnImeThread()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lorg/chromium/content/browser/input/ImeUtils;->checkCondition(Z)V

    .line 230
    return-void

    .line 229
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private blockAndGetStateUpdate()Lorg/chromium/content/browser/input/TextInputState;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 238
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    move v2, v3

    .line 243
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/input/TextInputState;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    invoke-virtual {v0}, Lorg/chromium/content/browser/input/TextInputState;->shouldUnblock()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v1

    .line 257
    :cond_0
    :goto_1
    return-object v0

    .line 244
    :catch_0
    move-exception v0

    .line 247
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 248
    invoke-static {v3}, Lorg/chromium/content/browser/input/ImeUtils;->checkCondition(Z)V

    move-object v0, v1

    .line 249
    goto :goto_1

    .line 254
    :cond_1
    invoke-virtual {v0}, Lorg/chromium/content/browser/input/TextInputState;->fromIme()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 255
    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->updateSelection(Lorg/chromium/content/browser/input/TextInputState;)V

    goto :goto_1

    .line 261
    :cond_2
    const/4 v0, 0x1

    move v2, v0

    .line 262
    goto :goto_0
.end method

.method private cancelCombiningAccent()V
    .locals 1

    .prologue
    .line 458
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mPendingAccent:I

    .line 459
    return-void
.end method

.method private handleCombiningAccent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 431
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 432
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    .line 434
    if-eqz v2, :cond_1

    .line 454
    :cond_0
    :goto_0
    return v0

    .line 435
    :cond_1
    const/high16 v2, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 436
    const v0, 0x7fffffff

    and-int/2addr v0, v3

    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 440
    iput v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mPendingAccent:I

    move v0, v1

    .line 441
    goto :goto_0

    .line 442
    :cond_2
    iget v2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mPendingAccent:I

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 443
    iget v2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mPendingAccent:I

    invoke-static {v2, v3}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v2

    .line 444
    if-eqz v2, :cond_3

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 446
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move v0, v1

    .line 448
    goto :goto_0

    .line 452
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->finishComposingText()Z

    goto :goto_0
.end method

.method private notifyUserAction()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNotifyUserActionRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 267
    return-void
.end method

.method private processPendingInputStates()V
    .locals 2

    .prologue
    .line 176
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 179
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/input/TextInputState;

    .line 180
    if-nez v0, :cond_1

    .line 182
    return-void

    .line 185
    :cond_1
    invoke-virtual {v0}, Lorg/chromium/content/browser/input/TextInputState;->shouldUnblock()Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    invoke-virtual {v0}, Lorg/chromium/content/browser/input/TextInputState;->fromIme()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lorg/chromium/content/browser/input/ImeUtils;->checkCondition(Z)V

    .line 191
    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->updateSelection(Lorg/chromium/content/browser/input/TextInputState;)V

    goto :goto_0

    .line 190
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private requestAndWaitForTextInputState()Lorg/chromium/content/browser/input/TextInputState;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mRequestTextInputStateUpdate:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 208
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->blockAndGetStateUpdate()Lorg/chromium/content/browser/input/TextInputState;

    move-result-object v0

    return-object v0
.end method

.method private updateSelection(Lorg/chromium/content/browser/input/TextInputState;)V
    .locals 5

    .prologue
    .line 196
    if-nez p1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 198
    iget v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    if-nez v0, :cond_0

    .line 199
    invoke-virtual {p1}, Lorg/chromium/content/browser/input/TextInputState;->selection()Lorg/chromium/content/browser/input/Range;

    move-result-object v0

    .line 200
    invoke-virtual {p1}, Lorg/chromium/content/browser/input/TextInputState;->composition()Lorg/chromium/content/browser/input/Range;

    move-result-object v1

    .line 201
    iget-object v2, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/Range;->start()I

    move-result v3

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/Range;->end()I

    move-result v0

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/Range;->start()I

    move-result v4

    invoke-virtual {v1}, Lorg/chromium/content/browser/input/Range;->end()I

    move-result v1

    invoke-virtual {v2, v3, v0, v4, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->updateSelection(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .prologue
    .line 361
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 362
    iget v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    .line 363
    const/4 v0, 0x1

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 1

    .prologue
    .line 582
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 583
    const/4 v0, 0x0

    return v0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1

    .prologue
    .line 559
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 560
    const/4 v0, 0x0

    return v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 1

    .prologue
    .line 572
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 573
    const/4 v0, 0x0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1

    .prologue
    .line 293
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 294
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->cancelCombiningAccent()V

    .line 295
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$9;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/input/ThreadedInputConnection$9;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;Ljava/lang/CharSequence;I)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 301
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->notifyUserAction()V

    .line 302
    const/4 v0, 0x1

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 1

    .prologue
    .line 387
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 388
    iget v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mPendingAccent:I

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->finishComposingText()Z

    .line 391
    :cond_0
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$12;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/input/ThreadedInputConnection$12;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;II)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 397
    const/4 v0, 0x1

    return v0
.end method

.method public endBatchEdit()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 371
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 372
    iget v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    if-nez v1, :cond_1

    .line 378
    :cond_0
    :goto_0
    return v0

    .line 373
    :cond_1
    iget v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    .line 375
    iget v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    if-nez v1, :cond_2

    .line 376
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->requestAndWaitForTextInputState()Lorg/chromium/content/browser/input/TextInputState;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->updateSelection(Lorg/chromium/content/browser/input/TextInputState;)V

    .line 378
    :cond_2
    iget v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public finishComposingText()Z
    .locals 1

    .prologue
    .line 467
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->cancelCombiningAccent()V

    .line 470
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mFinishComposingTextRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 471
    const/4 v0, 0x1

    return v0
.end method

.method public getCursorCapsMode(I)I
    .locals 1

    .prologue
    .line 548
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 3

    .prologue
    .line 343
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 344
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->requestAndWaitForTextInputState()Lorg/chromium/content/browser/input/TextInputState;

    move-result-object v0

    .line 345
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 352
    :goto_0
    return-object v0

    .line 346
    :cond_0
    new-instance v1, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 347
    invoke-virtual {v0}, Lorg/chromium/content/browser/input/TextInputState;->text()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 348
    invoke-virtual {v0}, Lorg/chromium/content/browser/input/TextInputState;->text()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 349
    invoke-virtual {v0}, Lorg/chromium/content/browser/input/TextInputState;->selection()Lorg/chromium/content/browser/input/Range;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/Range;->start()I

    move-result v2

    iput v2, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 350
    invoke-virtual {v0}, Lorg/chromium/content/browser/input/TextInputState;->selection()Lorg/chromium/content/browser/input/Range;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/content/browser/input/Range;->end()I

    move-result v2

    iput v2, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 351
    invoke-virtual {v0}, Lorg/chromium/content/browser/input/TextInputState;->singleLine()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput v0, v1, Landroid/view/inputmethod/ExtractedText;->flags:I

    move-object v0, v1

    .line 352
    goto :goto_0

    .line 351
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 536
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 537
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->requestAndWaitForTextInputState()Lorg/chromium/content/browser/input/TextInputState;

    move-result-object v0

    .line 538
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 539
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/chromium/content/browser/input/TextInputState;->getSelectedText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 524
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 525
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->requestAndWaitForTextInputState()Lorg/chromium/content/browser/input/TextInputState;

    move-result-object v0

    .line 526
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 527
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/TextInputState;->getTextAfterSelection(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 512
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 513
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->requestAndWaitForTextInputState()Lorg/chromium/content/browser/input/TextInputState;

    move-result-object v0

    .line 514
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 515
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/TextInputState;->getTextBeforeSelection(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method initializeOutAttrsOnUiThread(IIIILandroid/view/inputmethod/EditorInfo;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-static {}, Lorg/chromium/content/browser/input/ImeUtils;->checkOnUiThread()V

    .line 103
    iput v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mNumNestedBatchEdits:I

    .line 104
    iput v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mPendingAccent:I

    .line 105
    invoke-static {p1, p2, p3, p4, p5}, Lorg/chromium/content/browser/input/ImeUtils;->computeEditorInfo(IIIILandroid/view/inputmethod/EditorInfo;)V

    .line 109
    return-void
.end method

.method public moveCursorToSelectionEndOnUiThread()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mMoveCursorSelectionEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    return-void
.end method

.method public onRestartInputOnUiThread()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public performContextMenuAction(I)Z
    .locals 1

    .prologue
    .line 327
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 328
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$11;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnection$11;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;I)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 334
    const/4 v0, 0x1

    return v0
.end method

.method public performEditorAction(I)Z
    .locals 1

    .prologue
    .line 311
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 312
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$10;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnection$10;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;I)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 604
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 605
    const/4 v0, 0x0

    return v0
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1

    .prologue
    .line 595
    const/4 v0, 0x0

    return v0
.end method

.method public requestCursorUpdates(I)Z
    .locals 1

    .prologue
    .line 614
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 615
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$16;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnection$16;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;I)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 621
    const/4 v0, 0x1

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 414
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 416
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->handleCombiningAccent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    :goto_0
    return v1

    .line 418
    :cond_0
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$13;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnection$13;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;Landroid/view/KeyEvent;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 424
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->notifyUserAction()V

    goto :goto_0
.end method

.method public sendKeyEventOnUiThread(Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 147
    invoke-static {}, Lorg/chromium/content/browser/input/ImeUtils;->checkOnUiThread()V

    .line 148
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/content/browser/input/ThreadedInputConnection$7;

    invoke-direct {v1, p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnection$7;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;Landroid/view/KeyEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public setComposingRegion(II)Z
    .locals 1

    .prologue
    .line 496
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 497
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$15;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/input/ThreadedInputConnection$15;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;II)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 503
    const/4 v0, 0x1

    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1

    .prologue
    .line 275
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 276
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->cancelCombiningAccent()V

    .line 277
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$8;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/input/ThreadedInputConnection$8;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;Ljava/lang/CharSequence;I)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 283
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->notifyUserAction()V

    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method public setSelection(II)Z
    .locals 1

    .prologue
    .line 480
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->assertOnImeThread()V

    .line 481
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection$14;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/content/browser/input/ThreadedInputConnection$14;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnection;II)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 487
    const/4 v0, 0x1

    return v0
.end method

.method public unblockOnUiThread()V
    .locals 2

    .prologue
    .line 169
    invoke-static {}, Lorg/chromium/content/browser/input/ImeUtils;->checkOnUiThread()V

    .line 170
    sget-object v0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->UNBLOCKER:Lorg/chromium/content/browser/input/TextInputState;

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->addToQueueOnUiThread(Lorg/chromium/content/browser/input/TextInputState;)V

    .line 171
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mProcessPendingInputStatesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    return-void
.end method

.method public updateStateOnUiThread(Ljava/lang/String;IIIIZZ)V
    .locals 6

    .prologue
    .line 115
    invoke-static {}, Lorg/chromium/content/browser/input/ImeUtils;->checkOnUiThread()V

    .line 117
    new-instance v0, Lorg/chromium/content/browser/input/TextInputState;

    new-instance v2, Lorg/chromium/content/browser/input/Range;

    invoke-direct {v2, p2, p3}, Lorg/chromium/content/browser/input/Range;-><init>(II)V

    new-instance v3, Lorg/chromium/content/browser/input/Range;

    invoke-direct {v3, p4, p5}, Lorg/chromium/content/browser/input/Range;-><init>(II)V

    if-nez p7, :cond_1

    const/4 v5, 0x1

    :goto_0
    move-object v1, p1

    move v4, p6

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/input/TextInputState;-><init>(Ljava/lang/CharSequence;Lorg/chromium/content/browser/input/Range;Lorg/chromium/content/browser/input/Range;ZZ)V

    .line 122
    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->addToQueueOnUiThread(Lorg/chromium/content/browser/input/TextInputState;)V

    .line 123
    if-eqz p7, :cond_0

    .line 124
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnection;->mProcessPendingInputStatesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    :cond_0
    return-void

    .line 117
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method
