.class public Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity;
.super Landroid/support/v7/app/C;
.source "PhysicalWebOptInActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v7/app/C;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 20
    invoke-static {p0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity;->createListUrlsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static createListUrlsIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    const-string/jumbo v1, "referer"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/support/v7/app/C;->onCreate(Landroid/os/Bundle;)V

    .line 24
    sget v0, Lorg/chromium/chrome/R$layout;->physical_web_optin:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity;->setContentView(I)V

    .line 25
    invoke-static {p0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->onOptInNotificationPressed(Landroid/content/Context;)V

    .line 27
    sget v0, Lorg/chromium/chrome/R$id;->physical_web_decline:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 28
    new-instance v1, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity$1;-><init>(Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    sget v0, Lorg/chromium/chrome/R$id;->physical_web_enable:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 40
    new-instance v1, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity$2;-><init>(Lorg/chromium/chrome/browser/physicalweb/PhysicalWebOptInActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method
