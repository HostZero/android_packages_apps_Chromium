.class final Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$6;
.super Ljava/lang/Object;
.source "AddToHomescreenDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic val$dialog:Landroid/support/v7/app/AlertDialog;

.field final synthetic val$dialogHelper:Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AlertDialog;Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$6;->val$dialog:Landroid/support/v7/app/AlertDialog;

    iput-object p2, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$6;->val$dialogHelper:Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$6;->val$dialog:Landroid/support/v7/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$6;->val$dialogHelper:Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;->isInitialized()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 138
    return-void
.end method
