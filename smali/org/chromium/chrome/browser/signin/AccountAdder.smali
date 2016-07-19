.class public Lorg/chromium/chrome/browser/signin/AccountAdder;
.super Ljava/lang/Object;
.source "AccountAdder.java"


# static fields
.field public static final ADD_ACCOUNT_RESULT:I = 0x66

.field private static sInstance:Lorg/chromium/chrome/browser/signin/AccountAdder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lorg/chromium/chrome/browser/signin/AccountAdder;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/signin/AccountAdder;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/signin/AccountAdder;->sInstance:Lorg/chromium/chrome/browser/signin/AccountAdder;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAddAccountIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    const-string/jumbo v1, "account_types"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "com.google"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    return-object v0
.end method

.method public static getInstance()Lorg/chromium/chrome/browser/signin/AccountAdder;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lorg/chromium/chrome/browser/signin/AccountAdder;->sInstance:Lorg/chromium/chrome/browser/signin/AccountAdder;

    return-object v0
.end method

.method public static overrideAccountAdderForTests(Lorg/chromium/chrome/browser/signin/AccountAdder;)V
    .locals 0

    .prologue
    .line 40
    sput-object p0, Lorg/chromium/chrome/browser/signin/AccountAdder;->sInstance:Lorg/chromium/chrome/browser/signin/AccountAdder;

    .line 41
    return-void
.end method


# virtual methods
.method public addAccount(Landroid/app/Activity;I)V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lorg/chromium/chrome/browser/signin/AccountAdder;->createAddAccountIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 68
    return-void
.end method

.method public addAccount(Landroid/app/Fragment;I)V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lorg/chromium/chrome/browser/signin/AccountAdder;->createAddAccountIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 59
    return-void
.end method
