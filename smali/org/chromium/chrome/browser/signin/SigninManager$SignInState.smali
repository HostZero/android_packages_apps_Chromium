.class Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;
.super Ljava/lang/Object;
.source "SigninManager.java"


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final activity:Landroid/app/Activity;

.field public blockedOnAccountSeeding:Z

.field public final callback:Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;

.field public displayedDialog:Landroid/app/DialogFragment;


# direct methods
.method public constructor <init>(Landroid/accounts/Account;Landroid/app/Activity;Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;)V
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->displayedDialog:Landroid/app/DialogFragment;

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->blockedOnAccountSeeding:Z

    .line 164
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->account:Landroid/accounts/Account;

    .line 165
    iput-object p2, p0, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->activity:Landroid/app/Activity;

    .line 166
    iput-object p3, p0, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->callback:Lorg/chromium/chrome/browser/signin/SigninManager$SignInCallback;

    .line 167
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;)Z
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->isActivityDestroyed()Z

    move-result v0

    return v0
.end method

.method private isActivityDestroyed()Z
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/chromium/base/ApplicationStatus;->getStateForActivity(Landroid/app/Activity;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isInteractive()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/SigninManager$SignInState;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
