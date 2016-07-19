.class public Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;
.super Ljava/lang/Object;
.source "AutofillPopupBridge.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lorg/chromium/ui/autofill/AutofillDelegate;


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAutofillPopup:Lorg/chromium/ui/autofill/AutofillPopup;

.field private final mContext:Landroid/content/Context;

.field private mDeletionDialog:Landroid/support/v7/app/AlertDialog;

.field private final mNativeAutofillPopup:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(JLorg/chromium/ui/base/WindowAndroid;Lorg/chromium/ui/base/ViewAndroidDelegate;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->mNativeAutofillPopup:J

    .line 37
    invoke-virtual {p3}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 38
    if-nez v0, :cond_0

    .line 39
    iput-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->mAutofillPopup:Lorg/chromium/ui/autofill/AutofillPopup;

    .line 40
    iput-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge$1;-><init>(Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    :goto_0
    return-void

    .line 50
    :cond_0
    new-instance v1, Lorg/chromium/ui/autofill/AutofillPopup;

    invoke-direct {v1, v0, p4, p0}, Lorg/chromium/ui/autofill/AutofillPopup;-><init>(Landroid/content/Context;Lorg/chromium/ui/base/ViewAndroidDelegate;Lorg/chromium/ui/autofill/AutofillDelegate;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->mAutofillPopup:Lorg/chromium/ui/autofill/AutofillPopup;

    .line 51
    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private static addToAutofillSuggestionArray([Lorg/chromium/ui/autofill/AutofillSuggestion;ILjava/lang/String;Ljava/lang/String;IIZZ)V
    .locals 7

    .prologue
    .line 145
    if-nez p4, :cond_0

    const/4 v3, 0x0

    .line 146
    :goto_0
    new-instance v0, Lorg/chromium/ui/autofill/AutofillSuggestion;

    move-object v1, p2

    move-object v2, p3

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/chromium/ui/autofill/AutofillSuggestion;-><init>(Ljava/lang/String;Ljava/lang/String;IIZZ)V

    aput-object v0, p0, p1

    .line 148
    return-void

    .line 145
    :cond_0
    invoke-static {p4}, Lorg/chromium/chrome/browser/ResourceId;->mapToDrawableId(I)I

    move-result v3

    goto :goto_0
.end method

.method private confirmDeletion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 115
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->mContext:Landroid/content/Context;

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

    iput-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->mDeletionDialog:Landroid/support/v7/app/AlertDialog;

    .line 121
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->mDeletionDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 122
    return-void
.end method

.method private static create(JLorg/chromium/ui/base/WindowAndroid;Lorg/chromium/ui/base/ViewAndroidDelegate;)Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;-><init>(JLorg/chromium/ui/base/WindowAndroid;Lorg/chromium/ui/base/ViewAndroidDelegate;)V

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
    .line 88
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->mAutofillPopup:Lorg/chromium/ui/autofill/AutofillPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->mAutofillPopup:Lorg/chromium/ui/autofill/AutofillPopup;

    invoke-virtual {v0}, Lorg/chromium/ui/autofill/AutofillPopup;->dismiss()V

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->mDeletionDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->mDeletionDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 90
    :cond_1
    return-void
.end method

.method private native nativeDeletionConfirmed(J)V
.end method

.method private native nativeDeletionRequested(JI)V
.end method

.method private native nativePopupDismissed(J)V
.end method

.method private native nativeSuggestionSelected(JI)V
.end method

.method private setAnchorRect(FFFF)V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->mAutofillPopup:Lorg/chromium/ui/autofill/AutofillPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->mAutofillPopup:Lorg/chromium/ui/autofill/AutofillPopup;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/chromium/ui/autofill/AutofillPopup;->setAnchorRect(FFFF)V

    .line 111
    :cond_0
    return-void
.end method

.method private show([Lorg/chromium/ui/autofill/AutofillSuggestion;Z)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->mAutofillPopup:Lorg/chromium/ui/autofill/AutofillPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->mAutofillPopup:Lorg/chromium/ui/autofill/AutofillPopup;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/ui/autofill/AutofillPopup;->filterAndShow([Lorg/chromium/ui/autofill/AutofillSuggestion;Z)V

    .line 99
    :cond_0
    return-void
.end method


# virtual methods
.method public deleteSuggestion(I)V
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->mNativeAutofillPopup:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->nativeDeletionRequested(JI)V

    .line 75
    return-void
.end method

.method public dismissed()V
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->mNativeAutofillPopup:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->nativePopupDismissed(J)V

    .line 65
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 79
    sget-boolean v0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 80
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->mNativeAutofillPopup:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->nativeDeletionConfirmed(J)V

    .line 81
    return-void
.end method

.method public suggestionSelected(I)V
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->mNativeAutofillPopup:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/autofill/AutofillPopupBridge;->nativeSuggestionSelected(JI)V

    .line 70
    return-void
.end method
