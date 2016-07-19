.class Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog$1;
.super Landroid/widget/ArrayAdapter;
.source "AccountChooserDialog.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;Landroid/content/Context;I[Lorg/chromium/chrome/browser/password_manager/Credential;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog$1;->this$0:Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 98
    if-nez p2, :cond_0

    .line 99
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog$1;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 100
    sget v1, Lorg/chromium/chrome/R$layout;->account_chooser_dialog_item:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 106
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 108
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog$1;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/password_manager/Credential;

    .line 110
    sget v1, Lorg/chromium/chrome/R$id;->profile_image:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 111
    iget-object v2, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog$1;->this$0:Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;

    # getter for: Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mAvatarViews:[Landroid/widget/ImageView;
    invoke-static {v2}, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->access$000(Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;)[Landroid/widget/ImageView;

    move-result-object v2

    aput-object v1, v2, p1

    .line 112
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/password_manager/Credential;->getAvatar()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 113
    if-eqz v2, :cond_1

    .line 114
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 119
    :goto_1
    sget v1, Lorg/chromium/chrome/R$id;->main_name:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 120
    sget v2, Lorg/chromium/chrome/R$id;->secondary_name:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 122
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/password_manager/Credential;->getFederation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 124
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/password_manager/Credential;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 125
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/password_manager/Credential;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    :goto_2
    return-object p2

    .line 103
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 104
    iget-object v1, p0, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog$1;->this$0:Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;

    # getter for: Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->mAvatarViews:[Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;->access$000(Lorg/chromium/chrome/browser/password_manager/AccountChooserDialog;)[Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_0

    .line 116
    :cond_1
    sget v2, Lorg/chromium/chrome/R$drawable;->account_management_no_picture:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 128
    :cond_2
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/password_manager/Credential;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/password_manager/Credential;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 133
    :cond_3
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/password_manager/Credential;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/password_manager/Credential;->getFederation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
