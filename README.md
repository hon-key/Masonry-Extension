# Masonry-Extension

Masonry 很强大，比如说，对于一个 View 你要以特定的方式相对于他 superview 进行约束，那么，你应该会看到如下代码

```
[view mas_makeConstraints:^(MASConstraintMaker *make) {
    make.top.equalTo(superview).with.offset(10);
    make.left.equalTo(superview).with.offset(15);
    make.right.equalTo(superview).with.offset(-15);
    make.height.mas_equalTo(200);
}];
```

相较于原生的 NSLayoutConstraint, Masonry 已经非常强大，代码已经很短了。问题在于，这样的写法如果写多，你同样会觉得麻烦，因为大部分时间里，你可能都是在写相同类型的 Masonry 代码，你会写出大量的 with 以及 equalTo，却无法把它浓缩得更短，就比如上面这个，你无法把 top、left、right 写在同一个 equalTo 里。

所以，鉴于我日常开发之中总是会高度重复地使用相似风格的代码，我做了一个稍微简单的封装，以牺牲一定的人类可读性，来换取更加灵活和简短的编程方式，比如上面这个例子，使用 Masonry-Extension 将能这么写：

```
[view mas_makeConstraints:^(MASConstraintMaker *make) {
    make.to(superview).top(10).left(15).right(15);
    make.height.mas_equalTo(200);
}];
```

首先，它减少了 equalTo的编写量，为了简短，不选择使用 with 这种冗余写法，当然，写 with 虽然冗余，但是从英文来讲它非常可读。

其次，它转变了一些思维，right 和 bottom 选择使用和原生相反的约束方式，不在使用负数而是正数来进行约束，虽然不是所有人都能认同这种改变，不过比较符合repo主自身的思维习惯。

Masonry-Extension 不是为了取代 Masonry 的写法，它只是为了让我们更加方便地去应用 Masonry

在将来，我希望添加更多高效简短的方法到这个扩展，以求扩大其使用面。
