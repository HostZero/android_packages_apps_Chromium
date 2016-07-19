.class public final Lorg/chromium/chrome/browser/signin/SigninHelper$SystemAccountChangeEventChecker;
.super Ljava/lang/Object;
.source "SigninHelper.java"

# interfaces
.implements Lorg/chromium/chrome/browser/signin/SigninHelper$AccountChangeEventChecker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAccountChangeEvents(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 81
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/auth/b;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/AccountChangeEvent;

    .line 85
    invoke-virtual {v0}, Lcom/google/android/gms/auth/AccountChangeEvent;->a()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/google/android/gms/auth/AccountChangeEvent;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/auth/a; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    const-string/jumbo v1, "SigninHelper"

    const-string/jumbo v2, "Failed to get change events"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    return-object v0

    .line 88
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/auth/a; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 94
    :catch_1
    move-exception v0

    .line 95
    const-string/jumbo v1, "SigninHelper"

    const-string/jumbo v2, "Failed to get change events"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 91
    goto :goto_2
.end method
