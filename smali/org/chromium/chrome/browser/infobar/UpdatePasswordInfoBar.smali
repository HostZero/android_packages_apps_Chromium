.class public Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;
.super Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;
.source "UpdatePasswordInfoBar.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field private final mBrandingSpan:Landroid/text/SpannableString;

.field private final mIsSmartLockEnabled:Z

.field private mMessageView:Landroid/widget/TextView;

.field private final mNativePtr:J

.field private mSelectedUsername:I

.field private final mShowMultipleAccounts:Z

.field private final mUsernames:[Ljava/lang/String;


# direct methods
.method private constructor <init>(JI[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 9

    .prologue
    .line 46
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;-><init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iput-wide p1, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->mNativePtr:J

    .line 48
    iput-object p4, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->mUsernames:[Ljava/lang/String;

    .line 49
    move/from16 v0, p8

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->mShowMultipleAccounts:Z

    .line 50
    move/from16 v0, p9

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->mIsSmartLockEnabled:Z

    .line 51
    new-instance v1, Landroid/text/SpannableString;

    move-object/from16 v0, p7

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->mBrandingSpan:Landroid/text/SpannableString;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->onUsernameLinkClicked(Landroid/view/View;)V

    return-void
.end method

.method private createUsernameMessageText(I)Ljava/lang/CharSequence;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 73
    iput p1, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->mSelectedUsername:I

    .line 74
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->update_password_for_account:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->mUsernames:[Ljava/lang/String;

    iget v2, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->mSelectedUsername:I

    aget-object v1, v1, v2

    .line 76
    iget-boolean v2, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->mShowMultipleAccounts:Z

    if-eqz v2, :cond_0

    .line 78
    new-instance v2, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " \u25be"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 80
    new-instance v1, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar$1;-><init>(Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x11

    invoke-virtual {v2, v1, v5, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 86
    new-array v1, v7, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->mBrandingSpan:Landroid/text/SpannableString;

    aput-object v3, v1, v5

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 88
    :cond_0
    new-array v2, v7, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->mBrandingSpan:Landroid/text/SpannableString;

    aput-object v3, v2, v5

    aput-object v1, v2, v6

    invoke-static {v0, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectedUsername()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->mSelectedUsername:I

    return v0
.end method

.method private onUsernameLinkClicked(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 55
    new-instance v2, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    move v0, v1

    .line 56
    :goto_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->mUsernames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 57
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->mUsernames:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-interface {v3, v1, v0, v0, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v2, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 60
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->show()V

    .line 61
    return-void
.end method

.method private static show(JI[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lorg/chromium/chrome/browser/infobar/InfoBar;
    .locals 12

    .prologue
    .line 38
    new-instance v1, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;

    invoke-static {p2}, Lorg/chromium/chrome/browser/ResourceId;->mapToDrawableId(I)I

    move-result v4

    move-wide v2, p0

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;-><init>(JI[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v1
.end method


# virtual methods
.method public createContent(Lorg/chromium/chrome/browser/infobar/InfoBarLayout;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 105
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->createContent(Lorg/chromium/chrome/browser/infobar/InfoBarLayout;)V

    .line 107
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->mIsSmartLockEnabled:Z

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->mBrandingSpan:Landroid/text/SpannableString;

    new-instance v1, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar$2;-><init>(Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;)V

    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->mBrandingSpan:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 115
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->mShowMultipleAccounts:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->mUsernames:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_2

    .line 116
    :cond_1
    invoke-direct {p0, v4}, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->createUsernameMessageText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 122
    :goto_0
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->getMessageTextView()Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->mMessageView:Landroid/widget/TextView;

    .line 123
    iget-object v1, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->mMessageView:Landroid/widget/TextView;

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 124
    return-void

    .line 118
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->update_password:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->mBrandingSpan:Landroid/text/SpannableString;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->mMessageView:Landroid/widget/TextView;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/infobar/UpdatePasswordInfoBar;->createUsernameMessageText(I)Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 100
    const/4 v0, 0x0

    return v0
.end method
