.class public Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;
.super Landroid/app/DialogFragment;
.source "AutoSigninFirstRunDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mExplanation:Ljava/lang/String;

.field private final mExplanationLinkEnd:I

.field private final mExplanationLinkStart:I

.field private mNativeAutoSigninFirstRunDialog:J

.field private final mOkButtonText:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;

.field private final mTurnOffButtonText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 45
    iput-wide p2, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->mNativeAutoSigninFirstRunDialog:J

    .line 46
    iput-object p1, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->mContext:Landroid/content/Context;

    .line 47
    iput-object p4, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->mTitle:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->mExplanation:Ljava/lang/String;

    .line 49
    iput p6, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->mExplanationLinkStart:I

    .line 50
    iput p7, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->mExplanationLinkEnd:I

    .line 51
    iput-object p8, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->mOkButtonText:Ljava/lang/String;

    .line 52
    iput-object p9, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->mTurnOffButtonText:Ljava/lang/String;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;)J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->mNativeAutoSigninFirstRunDialog:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;J)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->nativeOnLinkClicked(J)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private static createDialog(Lorg/chromium/ui/base/WindowAndroid;JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;
    .locals 11

    .prologue
    .line 60
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 61
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    .line 63
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private destroy()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 120
    sget-boolean v0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->mNativeAutoSigninFirstRunDialog:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 121
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->mNativeAutoSigninFirstRunDialog:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->nativeDestroy(J)V

    .line 122
    iput-wide v2, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->mNativeAutoSigninFirstRunDialog:J

    .line 123
    return-void
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeOnLinkClicked(J)V
.end method

.method private native nativeOnOkClicked(J)V
.end method

.method private native nativeOnTurnOffClicked(J)V
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->dismiss()V

    .line 106
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .prologue
    .line 72
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->mContext:Landroid/content/Context;

    sget v2, Lorg/chromium/chrome/R$style;->AlertDialogTheme:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->mOkButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->mTurnOffButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 77
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lorg/chromium/chrome/R$layout;->single_line_bottom_text_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 79
    sget v0, Lorg/chromium/chrome/R$id;->summary:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    iget v3, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->mExplanationLinkStart:I

    iget v4, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->mExplanationLinkEnd:I

    if-eq v3, v4, :cond_0

    iget v3, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->mExplanationLinkEnd:I

    if-eqz v3, :cond_0

    .line 82
    new-instance v3, Landroid/text/SpannableString;

    iget-object v4, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->mExplanation:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 83
    new-instance v4, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog$1;

    invoke-direct {v4, p0}, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog$1;-><init>(Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;)V

    iget v5, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->mExplanationLinkStart:I

    iget v6, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->mExplanationLinkEnd:I

    const/16 v7, 0x12

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 90
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 96
    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 98
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->mDialog:Landroid/app/AlertDialog;

    .line 99
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v0

    .line 93
    :cond_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->mExplanation:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 114
    iget-wide v0, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->mNativeAutoSigninFirstRunDialog:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->nativeOnTurnOffClicked(J)V

    .line 115
    invoke-direct {p0}, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->destroy()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/password_manager/AutoSigninFirstRunDialog;->mDialog:Landroid/app/AlertDialog;

    .line 117
    return-void
.end method
