.class final Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$5;
.super Ljava/lang/Object;
.source "AddToHomescreenDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$dialogHelper:Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$5;->val$dialogHelper:Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;

    iput-object p2, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$5;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$5;->val$dialogHelper:Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;

    iget-object v1, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$5;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper;->addShortcut(Ljava/lang/String;)V

    .line 128
    return-void
.end method
