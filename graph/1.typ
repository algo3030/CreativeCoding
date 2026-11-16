#import "@preview/cetz:0.5.2"
#import "@preview/cetz-plot:0.1.4": plot
#set page(width: auto, height: auto, margin: 1em)

#cetz.canvas({
  import cetz.draw: *
  set-style(axes: (
    x: (mark: (end: ">", fill: black)),
    y: (mark: (end: ">", fill: black)),
  ))

  plot.plot(
    size: (12, 6),
    axis-style: "school-book", // 原点を通る矢印つきの軸
    x-tick-step: 1,
    y-tick-step: none,
    {
      plot.add(
        x => calc.sin(3 * x) + x / 2,
        domain: (0, 6),
        samples: 300,
        style: (stroke: 1pt),
      )
      plot.add(
        x => x,
        domain: (0, 2),
        samples: 2,
        style: (stroke: 1pt),
      )
    },
  )
})
