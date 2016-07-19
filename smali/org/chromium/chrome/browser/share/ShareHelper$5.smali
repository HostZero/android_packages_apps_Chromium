.class final Lorg/chromium/chrome/browser/share/ShareHelper$5;
.super Landroid/os/AsyncTask;
.source "ShareHelper.java"


# instance fields
.field final synthetic val$component:Landroid/content/ComponentName;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lorg/chromium/chrome/browser/share/ShareHelper$5;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lorg/chromium/chrome/browser/share/ShareHelper$5;->val$component:Landroid/content/ComponentName;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 398
    .line 401
    :try_start_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/share/ShareHelper$5;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lorg/chromium/chrome/browser/share/ShareHelper$5;->val$component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 402
    :try_start_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/share/ShareHelper$5;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lorg/chromium/chrome/browser/share/ShareHelper$5;->val$component:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 404
    iget-object v3, p0, Lorg/chromium/chrome/browser/share/ShareHelper$5;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 408
    :goto_0
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 395
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/share/ShareHelper$5;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
