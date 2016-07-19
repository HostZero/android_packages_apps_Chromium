.class public Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;
.super Ljava/lang/Object;
.source "CardUnmaskBridge.java"

# interfaces
.implements Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$CardUnmaskPromptDelegate;


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field private final mCardUnmaskPrompt:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;

.field private final mNativeCardUnmaskPromptViewAndroid:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;IZZZLorg/chromium/ui/base/WindowAndroid;)V
    .locals 9

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->mNativeCardUnmaskPromptViewAndroid:J

    .line 28
    invoke-virtual/range {p9 .. p9}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 29
    if-nez v1, :cond_0

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->mCardUnmaskPrompt:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge$1;-><init>(Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    :goto_0
    return-void

    .line 40
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;

    invoke-static {p5}, Lorg/chromium/chrome/browser/ResourceId;->mapToDrawableId(I)I

    move-result v5

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt$CardUnmaskPromptDelegate;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->mCardUnmaskPrompt:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;

    goto :goto_0
.end method

.method private static create(JLjava/lang/String;Ljava/lang/String;IZZZLorg/chromium/ui/base/WindowAndroid;)Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;
    .locals 12

    .prologue
    .line 50
    new-instance v1, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;-><init>(JLjava/lang/String;Ljava/lang/String;IZZZLorg/chromium/ui/base/WindowAndroid;)V

    return-object v1
.end method

.method private disableAndWaitForVerification()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->mCardUnmaskPrompt:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->mCardUnmaskPrompt:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->disableAndWaitForVerification()V

    .line 111
    :cond_0
    return-void
.end method

.method private dismiss()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->mCardUnmaskPrompt:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->mCardUnmaskPrompt:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->dismiss()V

    .line 103
    :cond_0
    return-void
.end method

.method private native nativeCheckUserInputValidity(JLjava/lang/String;)Z
.end method

.method private native nativeOnNewCardLinkClicked(J)V
.end method

.method private native nativeOnUserInput(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method private native nativePromptDismissed(J)V
.end method

.method private show()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->mCardUnmaskPrompt:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->mCardUnmaskPrompt:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->show()V

    .line 81
    :cond_0
    return-void
.end method

.method private update(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->mCardUnmaskPrompt:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->mCardUnmaskPrompt:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->update(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 95
    :cond_0
    return-void
.end method

.method private verificationFinished(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->mCardUnmaskPrompt:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->mCardUnmaskPrompt:Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/chrome/browser/autofill/CardUnmaskPrompt;->verificationFinished(Ljava/lang/String;Z)V

    .line 123
    :cond_0
    return-void
.end method


# virtual methods
.method public checkUserInputValidity(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->mNativeCardUnmaskPromptViewAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->nativeCheckUserInputValidity(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public dismissed()V
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->mNativeCardUnmaskPromptViewAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->nativePromptDismissed(J)V

    .line 58
    return-void
.end method

.method public onNewCardLinkClicked()V
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->mNativeCardUnmaskPromptViewAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->nativeOnNewCardLinkClicked(J)V

    .line 73
    return-void
.end method

.method public onUserInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .prologue
    .line 67
    iget-wide v2, p0, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->mNativeCardUnmaskPromptViewAndroid:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/chromium/chrome/browser/autofill/CardUnmaskBridge;->nativeOnUserInput(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 68
    return-void
.end method
