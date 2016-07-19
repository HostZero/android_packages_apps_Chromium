.class Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar$1;
.super Ljava/lang/Object;
.source "ConfirmInfoBar.java"

# interfaces
.implements Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar$1;->this$0:Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult([Ljava/lang/String;[I)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 155
    .line 157
    sget v1, Lorg/chromium/chrome/R$string;->infobar_missing_multiple_permissions_text:I

    move v2, v1

    move v3, v0

    move v1, v0

    .line 158
    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_1

    .line 159
    aget v4, p2, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 160
    add-int/lit8 v3, v3, 0x1

    .line 161
    if-le v3, v6, :cond_0

    .line 162
    sget v2, Lorg/chromium/chrome/R$string;->infobar_missing_multiple_permissions_text:I

    .line 167
    :goto_1
    iget-object v4, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar$1;->this$0:Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;

    # getter for: Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;
    invoke-static {v4}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->access$100(Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;)Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v4

    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Lorg/chromium/ui/base/WindowAndroid;->canRequestPermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 168
    add-int/lit8 v1, v1, 0x1

    move v7, v2

    move v2, v1

    move v1, v7

    .line 158
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v7, v1

    move v1, v2

    move v2, v7

    goto :goto_0

    .line 164
    :cond_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar$1;->this$0:Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;

    aget-object v4, p1, v0

    # invokes: Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->getDeniedPermissionResourceId(Ljava/lang/String;)I
    invoke-static {v2, v4}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->access$000(Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 173
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar$1;->this$0:Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;

    # getter for: Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->mWindowAndroid:Lorg/chromium/ui/base/WindowAndroid;
    invoke-static {v0}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->access$100(Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;)Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 174
    if-lez v3, :cond_2

    if-lez v1, :cond_2

    if-eqz v0, :cond_2

    .line 175
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lorg/chromium/chrome/R$layout;->update_permissions_dialog:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 177
    sget v1, Lorg/chromium/chrome/R$id;->text:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 178
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 180
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    sget v2, Lorg/chromium/chrome/R$style;->AlertDialogTheme:I

    invoke-direct {v1, v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->infobar_update_permissions_button_text:I

    new-instance v2, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar$1$2;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar$1$2;-><init>(Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar$1$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar$1$1;-><init>(Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 202
    :goto_3
    return-void

    .line 197
    :cond_2
    if-lez v3, :cond_3

    .line 198
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar$1;->this$0:Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->onCloseButtonClicked()V

    goto :goto_3

    .line 200
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar$1;->this$0:Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;

    # invokes: Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->onButtonClickedInternal(Z)V
    invoke-static {v0, v6}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->access$300(Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;Z)V

    goto :goto_3

    :cond_4
    move v7, v2

    move v2, v1

    move v1, v7

    goto :goto_2
.end method
