.class final Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$7;
.super Ljava/lang/Object;
.source "AddToHomescreenDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic val$dialogHelper:Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$7;->val$dialogHelper:Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    # setter for: Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog;->sCurrentDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0}, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog;->access$002(Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;

    .line 147
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$7;->val$dialogHelper:Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;->destroy()V

    .line 148
    return-void
.end method
