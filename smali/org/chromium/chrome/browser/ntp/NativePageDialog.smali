.class public Lorg/chromium/chrome/browser/ntp/NativePageDialog;
.super Lorg/chromium/chrome/browser/widget/AlwaysDismissedDialog;
.source "NativePageDialog.java"


# instance fields
.field private final mPage:Lorg/chromium/chrome/browser/NativePage;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lorg/chromium/chrome/browser/NativePage;)V
    .locals 1

    .prologue
    .line 28
    sget v0, Lorg/chromium/chrome/R$style;->DialogWhenLarge:I

    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/widget/AlwaysDismissedDialog;-><init>(Landroid/app/Activity;I)V

    .line 29
    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/NativePageDialog;->mPage:Lorg/chromium/chrome/browser/NativePage;

    .line 30
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lorg/chromium/chrome/browser/widget/AlwaysDismissedDialog;->dismiss()V

    .line 59
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NativePageDialog;->mPage:Lorg/chromium/chrome/browser/NativePage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NativePageDialog;->mPage:Lorg/chromium/chrome/browser/NativePage;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/NativePage;->destroy()V

    .line 60
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 34
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/widget/AlwaysDismissedDialog;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/NativePageDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->dialog_with_titlebar:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 38
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NativePageDialog;->mPage:Lorg/chromium/chrome/browser/NativePage;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/NativePage;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 39
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/NativePageDialog;->setContentView(Landroid/view/View;)V

    .line 41
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/NativePageDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 42
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/NativePageDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 44
    sget v1, Lorg/chromium/chrome/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 45
    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/NativePageDialog;->mPage:Lorg/chromium/chrome/browser/NativePage;

    invoke-interface {v2}, Lorg/chromium/chrome/browser/NativePage;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    sget v1, Lorg/chromium/chrome/R$id;->close_button:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 48
    new-instance v1, Lorg/chromium/chrome/browser/ntp/NativePageDialog$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/ntp/NativePageDialog$1;-><init>(Lorg/chromium/chrome/browser/ntp/NativePageDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method
