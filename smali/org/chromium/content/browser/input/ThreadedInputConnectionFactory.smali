.class public Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;
.super Ljava/lang/Object;
.source "ThreadedInputConnectionFactory.java"

# interfaces
.implements Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

.field private final mInputMethodUma:Lorg/chromium/content/browser/input/InputMethodUma;

.field private mProxyView:Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

.field private mThreadedInputConnection:Lorg/chromium/content/browser/input/ThreadedInputConnection;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    .line 34
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->createHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mHandler:Landroid/os/Handler;

    .line 35
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->createInputMethodUma()Lorg/chromium/content/browser/input/InputMethodUma;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mInputMethodUma:Lorg/chromium/content/browser/input/InputMethodUma;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;)Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mProxyView:Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;)Lorg/chromium/content/browser/input/InputMethodManagerWrapper;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;)Lorg/chromium/content/browser/input/InputMethodUma;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mInputMethodUma:Lorg/chromium/content/browser/input/InputMethodUma;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;)Lorg/chromium/content/browser/input/ThreadedInputConnection;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mThreadedInputConnection:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private shouldTriggerDelayedOnCreateInputConnection()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 66
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 67
    if-eqz v4, :cond_1

    const-class v5, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "TestInputMethodManagerWrapper"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 73
    :cond_0
    :goto_1
    return v0

    .line 65
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private triggerDelayedOnCreateInputConnection(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mProxyView:Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->createProxyView(Landroid/os/Handler;Landroid/view/View;)Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mProxyView:Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mProxyView:Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;->requestFocus()Z

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;

    invoke-direct {v1, p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory$1;-><init>(Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    return-void
.end method


# virtual methods
.method protected createHandler()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 40
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "InputConnectionHandlerThread"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 42
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 43
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v1
.end method

.method protected createInputMethodUma()Lorg/chromium/content/browser/input/InputMethodUma;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lorg/chromium/content/browser/input/InputMethodUma;

    invoke-direct {v0}, Lorg/chromium/content/browser/input/InputMethodUma;-><init>()V

    return-object v0
.end method

.method protected createProxyView(Landroid/os/Handler;Landroid/view/View;)Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/chromium/content/browser/input/ThreadedInputConnectionProxyView;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/View;)V

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public bridge synthetic initializeAndGet(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapter;IIIILandroid/view/inputmethod/EditorInfo;)Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;
    .locals 1

    .prologue
    .line 21
    invoke-virtual/range {p0 .. p7}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->initializeAndGet(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapter;IIIILandroid/view/inputmethod/EditorInfo;)Lorg/chromium/content/browser/input/ThreadedInputConnection;

    move-result-object v0

    return-object v0
.end method

.method public initializeAndGet(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapter;IIIILandroid/view/inputmethod/EditorInfo;)Lorg/chromium/content/browser/input/ThreadedInputConnection;
    .locals 6

    .prologue
    .line 80
    invoke-static {}, Lorg/chromium/content/browser/input/ImeUtils;->checkOnUiThread()V

    .line 81
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->shouldTriggerDelayedOnCreateInputConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->triggerDelayedOnCreateInputConnection(Landroid/view/View;)V

    .line 83
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mThreadedInputConnection:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    if-nez v0, :cond_1

    .line 88
    new-instance v0, Lorg/chromium/content/browser/input/ThreadedInputConnection;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p2, v1}, Lorg/chromium/content/browser/input/ThreadedInputConnection;-><init>(Lorg/chromium/content/browser/input/ImeAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mThreadedInputConnection:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    .line 90
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mThreadedInputConnection:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->initializeOutAttrsOnUiThread(IIIILandroid/view/inputmethod/EditorInfo;)V

    .line 92
    iget-object v0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mThreadedInputConnection:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    goto :goto_0
.end method

.method protected onRegisterProxyViewFailed()V
    .locals 2

    .prologue
    .line 149
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Failed to register proxy view"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
