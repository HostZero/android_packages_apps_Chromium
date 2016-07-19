.class public Lorg/chromium/chrome/browser/autofill/AutofillKeyboardAccessoryBridge;
.super Ljava/lang/Object;
.source "AutofillKeyboardAccessoryBridge.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lorg/chromium/ui/autofill/AutofillDelegate;


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAccessoryView:Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;

.field private mContext:Landroid/content/Context;

.field private mNativeAutofillKeyboardAccessory:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/chromium/chrome/browser/autofill/AutofillKeyboardAccessoryBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/autofill/AutofillKeyboardAccessoryBridge;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method private static addToAutofillSuggestionArray([Lorg/chromium/ui/autofill/AutofillSuggestion;ILjava/lang/String;Ljava/lang/String;IIZ)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 151
    if-nez p4, :cond_0

    move v3, v6

    .line 152
    :goto_0
    new-instance v0, Lorg/chromium/ui/autofill/AutofillSuggestion;

    move-object v1, p2

    move-object v2, p3

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lorg/chromium/ui/autofill/AutofillSuggestion;-><init>(Ljava/lang/String;Ljava/lang/String;IIZZ)V

    aput-object v0, p0, p1

    .line 154
    return-void

    .line 151
    :cond_0
    invoke-static {p4}, Lorg/chromium/chrome/browser/ResourceId;->mapToDrawableId(I)I

    move-result v3

    goto :goto_0
.end method

.method private confirmDeletion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 117
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillKeyboardAccessoryBridge;->mContext:Landroid/content/Context;

    sget v2, Lorg/chromium/chrome/R$style;->AlertDialogTheme:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->ok:I

    invoke-virtual {v0, v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 124
    return-void
.end method

.method private static create()Lorg/chromium/chrome/browser/autofill/AutofillKeyboardAccessoryBridge;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lorg/chromium/chrome/browser/autofill/AutofillKeyboardAccessoryBridge;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/autofill/AutofillKeyboardAccessoryBridge;-><init>()V

    return-object v0
.end method

.method private static createAutofillSuggestionArray(I)[Lorg/chromium/ui/autofill/AutofillSuggestion;
    .locals 1

    .prologue
    .line 128
    new-array v0, p0, [Lorg/chromium/ui/autofill/AutofillSuggestion;

    return-object v0
.end method

.method private dismiss()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillKeyboardAccessoryBridge;->mAccessoryView:Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillKeyboardAccessoryBridge;->mAccessoryView:Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;

    invoke-virtual {v0}, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->dismiss()V

    .line 99
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillKeyboardAccessoryBridge;->mContext:Landroid/content/Context;

    .line 100
    return-void
.end method

.method private init(JLorg/chromium/ui/base/WindowAndroid;)V
    .locals 1

    .prologue
    .line 74
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 75
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/autofill/AutofillKeyboardAccessoryBridge;->nativeViewDismissed(J)V

    .line 76
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/autofill/AutofillKeyboardAccessoryBridge;->dismissed()V

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_1
    iput-wide p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillKeyboardAccessoryBridge;->mNativeAutofillKeyboardAccessory:J

    .line 81
    new-instance v0, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;

    invoke-direct {v0, p3, p0}, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;-><init>(Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/ui/autofill/AutofillDelegate;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillKeyboardAccessoryBridge;->mAccessoryView:Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;

    .line 82
    invoke-virtual {p3}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillKeyboardAccessoryBridge;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private native nativeDeletionConfirmed(J)V
.end method

.method private native nativeDeletionRequested(JI)V
.end method

.method private native nativeSuggestionSelected(JI)V
.end method

.method private native nativeViewDismissed(J)V
.end method

.method private resetNativeViewPointer()V
    .locals 2

    .prologue
    .line 90
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillKeyboardAccessoryBridge;->mNativeAutofillKeyboardAccessory:J

    .line 91
    return-void
.end method

.method private show([Lorg/chromium/ui/autofill/AutofillSuggestion;Z)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillKeyboardAccessoryBridge;->mAccessoryView:Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillKeyboardAccessoryBridge;->mAccessoryView:Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/ui/autofill/AutofillKeyboardAccessory;->showWithSuggestions([Lorg/chromium/ui/autofill/AutofillSuggestion;Z)V

    .line 109
    :cond_0
    return-void
.end method


# virtual methods
.method public deleteSuggestion(I)V
    .locals 4

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillKeyboardAccessoryBridge;->mNativeAutofillKeyboardAccessory:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillKeyboardAccessoryBridge;->mNativeAutofillKeyboardAccessory:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/autofill/AutofillKeyboardAccessoryBridge;->nativeDeletionRequested(JI)V

    goto :goto_0
.end method

.method public dismissed()V
    .locals 4

    .prologue
    .line 43
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillKeyboardAccessoryBridge;->mNativeAutofillKeyboardAccessory:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillKeyboardAccessoryBridge;->mNativeAutofillKeyboardAccessory:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/autofill/AutofillKeyboardAccessoryBridge;->nativeViewDismissed(J)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 61
    sget-boolean v0, Lorg/chromium/chrome/browser/autofill/AutofillKeyboardAccessoryBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 62
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillKeyboardAccessoryBridge;->mNativeAutofillKeyboardAccessory:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillKeyboardAccessoryBridge;->mNativeAutofillKeyboardAccessory:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/autofill/AutofillKeyboardAccessoryBridge;->nativeDeletionConfirmed(J)V

    goto :goto_0
.end method

.method public suggestionSelected(I)V
    .locals 4

    .prologue
    .line 49
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillKeyboardAccessoryBridge;->mNativeAutofillKeyboardAccessory:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillKeyboardAccessoryBridge;->mNativeAutofillKeyboardAccessory:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/autofill/AutofillKeyboardAccessoryBridge;->nativeSuggestionSelected(JI)V

    goto :goto_0
.end method
