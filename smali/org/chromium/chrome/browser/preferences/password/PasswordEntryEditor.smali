.class public Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;
.super Landroid/app/Fragment;
.source "PasswordEntryEditor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mException:Z

.field private mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->mException:Z

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->mID:I

    return v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->removeItem()V

    return-void
.end method

.method private hookupCancelDeleteButtons(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 94
    sget v0, Lorg/chromium/chrome/R$id;->password_entry_editor_delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 95
    sget v1, Lorg/chromium/chrome/R$id;->password_entry_editor_cancel:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 97
    new-instance v2, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor$2;

    invoke-direct {v2, p0, v0, v1}, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor$2;-><init>(Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    new-instance v0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor$3;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor$3;-><init>(Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void
.end method

.method private removeItem()V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lorg/chromium/chrome/browser/PasswordUIView;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/PasswordUIView;-><init>()V

    .line 69
    new-instance v1, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor$1;

    invoke-direct {v1, p0, v0}, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor$1;-><init>(Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;Lorg/chromium/chrome/browser/PasswordUIView;)V

    .line 89
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/PasswordUIView;->addObserver(Lorg/chromium/chrome/browser/PasswordUIView$PasswordListObserver;)V

    .line 90
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/PasswordUIView;->updatePasswordLists()V

    .line 91
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 39
    invoke-super {p0, p3}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget v0, Lorg/chromium/chrome/R$layout;->password_entry_editor:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 41
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->password_entry_editor_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 44
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 45
    sget-boolean v0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 46
    :cond_0
    const-string/jumbo v0, "id"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->mID:I

    .line 47
    const/4 v0, 0x0

    .line 48
    const-string/jumbo v1, "name"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    const-string/jumbo v0, "name"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 51
    :goto_0
    sget v0, Lorg/chromium/chrome/R$id;->password_entry_editor_name:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :goto_1
    const-string/jumbo v0, "url"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    sget v0, Lorg/chromium/chrome/R$id;->password_entry_editor_url:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->hookupCancelDeleteButtons(Landroid/view/View;)V

    .line 63
    return-object v2

    .line 55
    :cond_1
    sget v1, Lorg/chromium/chrome/R$string;->section_saved_passwords_exceptions:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/password/PasswordEntryEditor;->mException:Z

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method
