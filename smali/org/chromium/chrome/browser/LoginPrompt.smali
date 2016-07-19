.class public Lorg/chromium/chrome/browser/LoginPrompt;
.super Ljava/lang/Object;
.source "LoginPrompt.java"

# interfaces
.implements Lorg/chromium/chrome/browser/ChromeHttpAuthHandler$AutofillObserver;


# instance fields
.field private final mAuthHandler:Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/support/v7/app/AlertDialog;

.field private mPasswordView:Landroid/widget/EditText;

.field private mUsernameView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/chromium/chrome/browser/LoginPrompt;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lorg/chromium/chrome/browser/LoginPrompt;->mAuthHandler:Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;

    .line 37
    invoke-direct {p0}, Lorg/chromium/chrome/browser/LoginPrompt;->createDialog()V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/LoginPrompt;)Landroid/support/v7/app/AlertDialog;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lorg/chromium/chrome/browser/LoginPrompt;->mDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/LoginPrompt;)Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lorg/chromium/chrome/browser/LoginPrompt;->mAuthHandler:Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/LoginPrompt;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/chromium/chrome/browser/LoginPrompt;->getUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/LoginPrompt;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/chromium/chrome/browser/LoginPrompt;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createDialog()V
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Lorg/chromium/chrome/browser/LoginPrompt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->http_auth_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 42
    sget v0, Lorg/chromium/chrome/R$id;->username:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/chromium/chrome/browser/LoginPrompt;->mUsernameView:Landroid/widget/EditText;

    .line 43
    sget v0, Lorg/chromium/chrome/R$id;->password:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lorg/chromium/chrome/browser/LoginPrompt;->mPasswordView:Landroid/widget/EditText;

    .line 44
    iget-object v0, p0, Lorg/chromium/chrome/browser/LoginPrompt;->mPasswordView:Landroid/widget/EditText;

    new-instance v2, Lorg/chromium/chrome/browser/LoginPrompt$1;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/LoginPrompt$1;-><init>(Lorg/chromium/chrome/browser/LoginPrompt;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 55
    sget v0, Lorg/chromium/chrome/R$id;->explanation:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    iget-object v2, p0, Lorg/chromium/chrome/browser/LoginPrompt;->mAuthHandler:Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/ChromeHttpAuthHandler;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/chromium/chrome/browser/LoginPrompt;->mContext:Landroid/content/Context;

    sget v3, Lorg/chromium/chrome/R$style;->AlertDialogTheme:I

    invoke-direct {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v2, Lorg/chromium/chrome/R$string;->login_dialog_title:I

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->login_dialog_ok_button_label:I

    new-instance v2, Lorg/chromium/chrome/browser/LoginPrompt$4;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/LoginPrompt$4;-><init>(Lorg/chromium/chrome/browser/LoginPrompt;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->cancel:I

    new-instance v2, Lorg/chromium/chrome/browser/LoginPrompt$3;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/LoginPrompt$3;-><init>(Lorg/chromium/chrome/browser/LoginPrompt;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/LoginPrompt$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/LoginPrompt$2;-><init>(Lorg/chromium/chrome/browser/LoginPrompt;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/LoginPrompt;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 81
    iget-object v0, p0, Lorg/chromium/chrome/browser/LoginPrompt;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getDelegate()Landroid/support/v7/app/E;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/E;->a(Z)V

    .line 84
    iget-object v0, p0, Lorg/chromium/chrome/browser/LoginPrompt;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 85
    return-void
.end method

.method private getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/chromium/chrome/browser/LoginPrompt;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/chromium/chrome/browser/LoginPrompt;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onAutofillDataAvailable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/chromium/chrome/browser/LoginPrompt;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lorg/chromium/chrome/browser/LoginPrompt;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lorg/chromium/chrome/browser/LoginPrompt;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 108
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/chromium/chrome/browser/LoginPrompt;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 92
    iget-object v0, p0, Lorg/chromium/chrome/browser/LoginPrompt;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 93
    return-void
.end method
