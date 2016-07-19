.class final Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$3;
.super Ljava/lang/Object;
.source "AddToHomescreenDialog.java"

# interfaces
.implements Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialogHelper$Observer;


# instance fields
.field final synthetic val$dialog:Landroid/support/v7/app/AlertDialog;

.field final synthetic val$iconView:Landroid/widget/ImageView;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$progressBarView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/view/View;Landroid/widget/ImageView;Landroid/support/v7/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$3;->val$input:Landroid/widget/EditText;

    iput-object p2, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$3;->val$progressBarView:Landroid/view/View;

    iput-object p3, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$3;->val$iconView:Landroid/widget/ImageView;

    iput-object p4, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$3;->val$dialog:Landroid/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIconAvailable(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$3;->val$progressBarView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$3;->val$iconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$3;->val$iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 98
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$3;->val$dialog:Landroid/support/v7/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 99
    return-void
.end method

.method public final onUserTitleAvailable(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$3;->val$input:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 90
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/AddToHomescreenDialog$3;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method
