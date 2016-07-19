.class public Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog;
.super Ljava/lang/Object;
.source "AddToHomescreenDialog.java"


# static fields
.field private static sCurrentDialog:Landroid/support/v7/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;
    .locals 0

    .prologue
    .line 26
    sput-object p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog;->sCurrentDialog:Landroid/support/v7/app/AlertDialog;

    return-object p0
.end method

.method public static getCurrentDialogForTest()Landroid/support/v7/app/AlertDialog;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog;->sCurrentDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method public static show(Landroid/app/Activity;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->add_to_homescreen_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 42
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    sget v1, Lorg/chromium/chrome/R$style;->AlertDialogTheme:I

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v1, Lorg/chromium/chrome/R$string;->menu_add_to_homescreen:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->cancel:I

    new-instance v3, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$1;

    invoke-direct {v3}, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$1;-><init>()V

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    .line 53
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->getDelegate()Landroid/support/v7/app/E;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v7/app/E;->a(Z)V

    .line 57
    sget v0, Lorg/chromium/chrome/R$id;->spinny:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 58
    sget v0, Lorg/chromium/chrome/R$id;->icon:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 59
    sget v1, Lorg/chromium/chrome/R$id;->text:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 60
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 62
    new-instance v5, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$2;

    invoke-direct {v5, v4, v1}, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$2;-><init>(Landroid/view/View;Landroid/widget/EditText;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 78
    new-instance v5, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, p1}, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 86
    new-instance v6, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$3;

    invoke-direct {v6, v1, v4, v0, v3}, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$3;-><init>(Landroid/widget/EditText;Landroid/view/View;Landroid/widget/ImageView;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v5, v6}, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;->initialize(Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper$Observer;)V

    .line 102
    new-instance v0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$4;

    invoke-direct {v0, v3}, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$4;-><init>(Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 121
    invoke-virtual {v3, v2}, Landroid/support/v7/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 122
    const/4 v0, -0x1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lorg/chromium/chrome/R$string;->add:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$5;

    invoke-direct {v4, v5, v1}, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$5;-><init>(Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;Landroid/widget/EditText;)V

    invoke-virtual {v3, v0, v2, v4}, Landroid/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 133
    new-instance v0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$6;

    invoke-direct {v0, v3, v5}, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$6;-><init>(Landroid/support/v7/app/AlertDialog;Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;)V

    invoke-virtual {v3, v0}, Landroid/support/v7/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 142
    sput-object v3, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog;->sCurrentDialog:Landroid/support/v7/app/AlertDialog;

    .line 143
    new-instance v0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$7;

    invoke-direct {v0, v5}, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$7;-><init>(Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;)V

    invoke-virtual {v3, v0}, Landroid/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 151
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 152
    return-void
.end method
