.class public abstract Lcom/google/android/gms/b/T;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/b/T;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/b/T;
    .locals 1

    new-instance v0, Lcom/google/android/gms/b/X;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/b/X;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/b/T;
    .locals 1

    new-instance v0, Lcom/google/android/gms/b/W;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/b/W;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/b/T;
    .locals 1

    new-instance v0, Lcom/google/android/gms/b/Y;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/b/Y;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Lcom/google/android/gms/b/T;
    .locals 2

    new-instance v0, Lcom/google/android/gms/b/V;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/b/V;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/b/T;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
