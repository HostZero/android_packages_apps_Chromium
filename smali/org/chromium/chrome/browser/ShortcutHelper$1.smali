.class final Lorg/chromium/chrome/browser/ShortcutHelper$1;
.super Ljava/lang/Object;
.source "ShortcutHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$userTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lorg/chromium/chrome/browser/ShortcutHelper$1;->val$userTitle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 163
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 164
    sget v1, Lorg/chromium/chrome/R$string;->added_to_homescreen:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/chromium/chrome/browser/ShortcutHelper$1;->val$userTitle:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-static {v0, v1, v4}, Lorg/chromium/ui/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lorg/chromium/ui/widget/Toast;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lorg/chromium/ui/widget/Toast;->show()V

    .line 168
    return-void
.end method
