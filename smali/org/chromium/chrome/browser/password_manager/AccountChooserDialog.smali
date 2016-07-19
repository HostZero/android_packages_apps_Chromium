.class public Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;
.super Landroid/app/DialogFragment;
.source "AccountChooserDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;

.field private final mAvatarViews:[Landroid/widget/ImageView;

.field private final mContext:Landroid/content/Context;

.field private mCredential:Lorg/chromium/chrome/browser/password_manager/Credential;

.field private final mCredentials:[Lorg/chromium/chrome/browser/password_manager/Credential;

.field private mDialog:Landroid/app/AlertDialog;

.field private mNativeAccountChooserDialog:J

.field private final mOrigin:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;

.field private final mTitleLinkEnd:I

.field private final mTitleLinkStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;J[Lorg/chromium/chrome/browser/password_manager/Credential;Ljava/lang/String;IILjava/lang/String;)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 62
    iput-wide p2, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mNativeAccountChooserDialog:J

    .line 63
    iput-object p1, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p4}, [Lorg/chromium/chrome/browser/password_manager/Credential;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/password_manager/Credential;

    iput-object v0, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mCredentials:[Lorg/chromium/chrome/browser/password_manager/Credential;

    .line 65
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mCredentials:[Lorg/chromium/chrome/browser/password_manager/Credential;

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mAvatarViews:[Landroid/widget/ImageView;

    .line 66
    iput-object p5, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mTitle:Ljava/lang/String;

    .line 67
    iput p6, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mTitleLinkStart:I

    .line 68
    iput p7, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mTitleLinkEnd:I

    .line 69
    iput-object p8, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mOrigin:Ljava/lang/String;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;)[Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mAvatarViews:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;)J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mNativeAccountChooserDialog:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;J)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->nativeOnLinkClicked(J)V

    return-void
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$402(Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;Lorg/chromium/chrome/browser/password_manager/Credential;)Lorg/chromium/chrome/browser/password_manager/Credential;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mCredential:Lorg/chromium/chrome/browser/password_manager/Credential;

    return-object p1
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;)[Lorg/chromium/chrome/browser/password_manager/Credential;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mCredentials:[Lorg/chromium/chrome/browser/password_manager/Credential;

    return-object v0
.end method

.method private static createAccountChooser(Lorg/chromium/ui/base/WindowAndroid;J[Lorg/chromium/chrome/browser/password_manager/Credential;Ljava/lang/String;IILjava/lang/String;)Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;
    .locals 9

    .prologue
    .line 84
    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 85
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    .line 86
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;-><init>(Landroid/content/Context;J[Lorg/chromium/chrome/browser/password_manager/Credential;Ljava/lang/String;IILjava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private destroy()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 212
    sget-boolean v0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mNativeAccountChooserDialog:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 213
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mNativeAccountChooserDialog:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->nativeDestroy(J)V

    .line 214
    iput-wide v2, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mNativeAccountChooserDialog:J

    .line 215
    return-void
.end method

.method private generateAccountsArrayAdapter(Landroid/content/Context;[Lorg/chromium/chrome/browser/password_manager/Credential;)Landroid/widget/ArrayAdapter;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog$1;-><init>(Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;Landroid/content/Context;I[Lorg/chromium/chrome/browser/password_manager/Credential;)V

    return-object v0
.end method

.method private imageFetchComplete(ILandroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 202
    invoke-static {p2}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->makeRoundUserPicture(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 203
    if-ltz p1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mCredentials:[Lorg/chromium/chrome/browser/password_manager/Credential;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mCredentials:[Lorg/chromium/chrome/browser/password_manager/Credential;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mCredentials:[Lorg/chromium/chrome/browser/password_manager/Credential;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/password_manager/Credential;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 206
    :cond_0
    if-ltz p1, :cond_1

    iget-object v1, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mAvatarViews:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mAvatarViews:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    if-eqz v1, :cond_1

    .line 207
    iget-object v1, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mAvatarViews:[Landroid/widget/ImageView;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 209
    :cond_1
    return-void
.end method

.method private native nativeCancelDialog(J)V
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeOnCredentialClicked(JII)V
.end method

.method private native nativeOnLinkClicked(J)V
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 181
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->dismiss()V

    .line 182
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .prologue
    .line 145
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->account_chooser_dialog_title:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 147
    sget v0, Lorg/chromium/chrome/R$id;->origin:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 148
    iget-object v2, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mOrigin:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    sget v0, Lorg/chromium/chrome/R$id;->title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 150
    iget v2, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mTitleLinkStart:I

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mTitleLinkEnd:I

    if-eqz v2, :cond_0

    .line 151
    new-instance v2, Landroid/text/SpannableString;

    iget-object v3, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mTitle:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 152
    new-instance v3, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog$2;

    invoke-direct {v3, p0}, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog$2;-><init>(Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;)V

    iget v4, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mTitleLinkStart:I

    iget v5, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mTitleLinkEnd:I

    const/16 v6, 0x12

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 159
    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 160
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 164
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mCredentials:[Lorg/chromium/chrome/browser/password_manager/Credential;

    invoke-direct {p0, v0, v2}, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->generateAccountsArrayAdapter(Landroid/content/Context;[Lorg/chromium/chrome/browser/password_manager/Credential;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 165
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mContext:Landroid/content/Context;

    sget v3, Lorg/chromium/chrome/R$style;->AlertDialogTheme:I

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->cancel:I

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mAdapter:Landroid/widget/ArrayAdapter;

    new-instance v2, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog$3;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog$3;-><init>(Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mDialog:Landroid/app/AlertDialog;

    .line 175
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v0

    .line 162
    :cond_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 190
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mCredential:Lorg/chromium/chrome/browser/password_manager/Credential;

    if-eqz v0, :cond_0

    .line 191
    iget-wide v0, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mNativeAccountChooserDialog:J

    iget-object v2, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mCredential:Lorg/chromium/chrome/browser/password_manager/Credential;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/password_manager/Credential;->getIndex()I

    move-result v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mCredential:Lorg/chromium/chrome/browser/password_manager/Credential;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/password_manager/Credential;->getType()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->nativeOnCredentialClicked(JII)V

    .line 196
    :goto_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->destroy()V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mDialog:Landroid/app/AlertDialog;

    .line 198
    return-void

    .line 194
    :cond_0
    iget-wide v0, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mNativeAccountChooserDialog:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->nativeCancelDialog(J)V

    goto :goto_0
.end method
