.class Landroid/support/v4/app/f;
.super Ljava/lang/Object;
.source "ActivityManagerCompatKitKat.java"


# static fields
.field private static b:Ljava/lang/reflect/Method;

.field private static c:Z

.field private static d:Ljava/lang/reflect/Method;

.field private static e:Z


# instance fields
.field private final a:Landroid/app/ActivityOptions;


# direct methods
.method private constructor <init>(Landroid/app/ActivityOptions;)V
    .locals 0

    .prologue
    .line 1047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1048
    iput-object p1, p0, Landroid/support/v4/app/f;->a:Landroid/app/ActivityOptions;

    .line 1049
    return-void
.end method

.method public static a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 2039
    sget-boolean v0, Landroid/support/v4/app/f;->c:Z

    if-nez v0, :cond_0

    .line 2041
    :try_start_0
    const-class v0, Landroid/os/Bundle;

    const-string/jumbo v2, "getIBinder"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2042
    sput-object v0, Landroid/support/v4/app/f;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2046
    :goto_0
    sput-boolean v6, Landroid/support/v4/app/f;->c:Z

    .line 2049
    :cond_0
    sget-object v0, Landroid/support/v4/app/f;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 2051
    :try_start_1
    sget-object v0, Landroid/support/v4/app/f;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2058
    :goto_1
    return-object v0

    .line 2043
    :catch_0
    move-exception v0

    .line 2044
    const-string/jumbo v2, "BundleCompatDonut"

    const-string/jumbo v3, "Failed to retrieve getIBinder method"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2052
    :catch_1
    move-exception v0

    .line 2054
    :goto_2
    const-string/jumbo v2, "BundleCompatDonut"

    const-string/jumbo v3, "Failed to invoke getIBinder via reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2055
    sput-object v1, Landroid/support/v4/app/f;->b:Ljava/lang/reflect/Method;

    :cond_1
    move-object v0, v1

    .line 2058
    goto :goto_1

    .line 2052
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;II)Landroid/support/v4/app/f;
    .locals 2

    .prologue
    .line 1029
    new-instance v0, Landroid/support/v4/app/f;

    invoke-static {p0, p1, p2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/f;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0
.end method

.method public static a(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2062
    sget-boolean v0, Landroid/support/v4/app/f;->e:Z

    if-nez v0, :cond_0

    .line 2064
    :try_start_0
    const-class v0, Landroid/os/Bundle;

    const-string/jumbo v1, "putIBinder"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2066
    sput-object v0, Landroid/support/v4/app/f;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2070
    :goto_0
    sput-boolean v5, Landroid/support/v4/app/f;->e:Z

    .line 2073
    :cond_0
    sget-object v0, Landroid/support/v4/app/f;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 2075
    :try_start_1
    sget-object v0, Landroid/support/v4/app/f;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2082
    :cond_1
    :goto_1
    return-void

    .line 2067
    :catch_0
    move-exception v0

    .line 2068
    const-string/jumbo v1, "BundleCompatDonut"

    const-string/jumbo v2, "Failed to retrieve putIBinder method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2076
    :catch_1
    move-exception v0

    .line 2078
    :goto_2
    const-string/jumbo v1, "BundleCompatDonut"

    const-string/jumbo v2, "Failed to invoke putIBinder via reflection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2079
    const/4 v0, 0x0

    sput-object v0, Landroid/support/v4/app/f;->d:Ljava/lang/reflect/Method;

    goto :goto_1

    .line 2076
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Landroid/support/v4/app/f;->a:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
