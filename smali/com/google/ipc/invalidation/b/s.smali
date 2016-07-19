.class public final Lcom/google/ipc/invalidation/b/s;
.super Ljava/lang/Object;
.source "UtilFormatter.java"


# instance fields
.field private final a:Ljava/util/Formatter;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Lcom/google/ipc/invalidation/b/s;->a:Ljava/util/Formatter;

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/ipc/invalidation/b/s;->a:Ljava/util/Formatter;

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 36
    return-void
.end method
