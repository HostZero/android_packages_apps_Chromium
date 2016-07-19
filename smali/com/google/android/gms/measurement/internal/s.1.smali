.class public final Lcom/google/android/gms/measurement/internal/s;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/google/android/gms/b/T;

.field private final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/b/T;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/s;->b:Lcom/google/android/gms/b/T;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/s;->a:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/s;->c:Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/s;
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/google/android/gms/measurement/internal/s;

    invoke-static {p0, v2}, Lcom/google/android/gms/b/T;->a(Ljava/lang/String;Z)Lcom/google/android/gms/b/T;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/s;-><init>(Ljava/lang/String;Lcom/google/android/gms/b/T;Ljava/lang/Object;)V

    return-object v0
.end method

.method static a(Ljava/lang/String;I)Lcom/google/android/gms/measurement/internal/s;
    .locals 3

    new-instance v0, Lcom/google/android/gms/measurement/internal/s;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/gms/b/T;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/b/T;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/s;-><init>(Ljava/lang/String;Lcom/google/android/gms/b/T;Ljava/lang/Object;)V

    return-object v0
.end method

.method static a(Ljava/lang/String;J)Lcom/google/android/gms/measurement/internal/s;
    .locals 3

    new-instance v0, Lcom/google/android/gms/measurement/internal/s;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/gms/b/T;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/b/T;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/s;-><init>(Ljava/lang/String;Lcom/google/android/gms/b/T;Ljava/lang/Object;)V

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/s;
    .locals 1

    invoke-static {p0, p1, p1}, Lcom/google/android/gms/measurement/internal/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/s;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/s;
    .locals 2

    new-instance v0, Lcom/google/android/gms/measurement/internal/s;

    invoke-static {p0, p2}, Lcom/google/android/gms/b/T;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/T;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/measurement/internal/s;-><init>(Ljava/lang/String;Lcom/google/android/gms/b/T;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/s;->a:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/s;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/s;->a:Ljava/lang/Object;

    return-object v0
.end method
